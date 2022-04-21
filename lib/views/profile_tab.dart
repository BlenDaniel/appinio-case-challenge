import 'package:appinio_case_challenge/models/app_state_model.dart';
import 'package:appinio_case_challenge/views/common/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateModel>(
      builder: (context, model, child) {
        return CustomScrollView(
          slivers: <Widget>[
            CupertinoSliverNavigationBar(
              largeTitle: Text('Profile'),
            ),
            SliverSafeArea(
              top: false,
              minimum: const EdgeInsets.only(top: 8),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(50),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.width - 100,
                            width: MediaQuery.of(context).size.width - 100,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/image/img.png'),
                            ),
                          ),
                          const Padding(padding: EdgeInsets.only(top: 8)),
                          Text(
                            "SKILLS",
                            style: Styles.profileTitle,
                          ),
                          const Padding(padding: EdgeInsets.only(top: 8)),
                          Container(
                            height: 1,
                            color: Styles.rowDivider,
                          ),
                          const Padding(
                              padding: EdgeInsets.only(top: 8, bottom: 7)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20,
                                child: VerticalDivider(
                                  width: 5,
                                  thickness: 1,
                                  color: Colors.black,
                                ),
                              ),
                              const Padding(padding: EdgeInsets.only(right: 8)),
                              Text(
                                "SOFTWARE SKILLS".toString(),
                                style: Styles.rowItem,
                              ),
                            ],
                          ),
                          const Padding(padding: EdgeInsets.only(top: 15)),
                          Text(
                            "Python, git, Java, JavaScript, Node.js, C, C++, PHP, SQL, HTML/CSS, Android/Java, Flutter/Dart"
                                .toString(),
                            style: Styles.profileText,
                          ),
                        ],
                      ),
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
