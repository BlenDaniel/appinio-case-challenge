import 'package:appinio_case_challenge/models/app_models.dart';
import 'package:appinio_case_challenge/models/app_state_model.dart';
import 'package:appinio_case_challenge/views/common/styles.dart';
import 'package:appinio_case_challenge/views/widgets/full_forcast_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateModel>(
      builder: (context, model, child) {
        return CustomScrollView(
          slivers: <Widget>[
            CupertinoSliverNavigationBar(
              largeTitle: Text('Weather Forcast'),
            ),
            SliverSafeArea(
              top: false,
              minimum: const EdgeInsets.only(top: 8),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return FutureBuilder<Forcast>(
                      future: model.getForcastOnce(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return GestureDetector(
                            onTap: () async {
                              await Future.delayed(Duration(seconds: 1), () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => FullForcastView(
                                            forcast: snapshot.data!,
                                          )),
                                );
                              });
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width - 100,
                              child: Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Product",
                                        style: Styles.rowItemName,
                                      ),
                                      Text(
                                        snapshot.data!.product,
                                        style: Styles.rowItem,
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Text(
                                        "Init",
                                        style: Styles.rowItemName,
                                      ),
                                      Text(
                                        snapshot.data!.init,
                                        style: Styles.rowItem,
                                      ),
                                      const Padding(
                                          padding: EdgeInsets.only(top: 20)),
                                      Text(
                                        "Tap to view dataries",
                                        style: Styles.label,
                                      ),
                                    ],
                                  ),
                                ),
                                elevation: 8,
                                shadowColor: Colors.green,
                                margin: EdgeInsets.all(20),
                              ),
                            ),
                          );
                        } else {
                          return Container(
                            width: MediaQuery.of(context).size.width - 100,
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircularProgressIndicator(),
                                  ],
                                ),
                              ),
                              elevation: 8,
                              shadowColor: Colors.green,
                              margin: EdgeInsets.all(20),
                            ),
                          );
                        }
                      },
                    );
                  },
                  childCount: 1,
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
