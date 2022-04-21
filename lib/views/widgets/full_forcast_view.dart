import 'package:appinio_case_challenge/models/app_state_model.dart';
import 'package:appinio_case_challenge/models/app_models.dart';
import 'package:appinio_case_challenge/views/common/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FullForcastView extends StatelessWidget {
  final Forcast forcast;
  const FullForcastView({Key? key, required this.forcast}) : super(key: key);

  Widget tempraturerow(Tempratures temp, int index) {
    Wind10m wind10m = Wind10m.fromJson(
        temp.wind10m);
    return SafeArea(
      top: false,
      bottom: false,
      minimum: const EdgeInsets.only(
        left: 16,
        top: 8,
        bottom: 8,
        right: 8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(index.toString() + "."),
                  const Padding(padding: EdgeInsets.only(top: 8)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                           "Timepoint",
                            style: Styles.rowItemName,
                          ),
                          Text(
                            temp.timepoint.toString(),
                            style: Styles.rowItem,
                          ),
                          const Padding(padding: EdgeInsets.only(top: 8)),
                          Text(
                            "Cloudcover",
                            style: Styles.rowItemName,
                          ),
                          Text(
                            temp.cloudcover.toString(),
                            style: Styles.rowItem,
                          ),
                          const Padding(padding: EdgeInsets.only(top: 8)),
                          Text(
                            "Seeing",
                            style: Styles.rowItemName,
                          ),
                          Text(
                            temp.seeing .toString(),
                            style: Styles.rowItem,
                          ),
                          const Padding(padding: EdgeInsets.only(top: 8)),
                          Text(
                            "Transparency",
                            style: Styles.rowItemName,
                          ),
                          Text(
                            temp.transparency .toString(),
                            style: Styles.rowItem,
                          ),

                          const Padding(padding: EdgeInsets.only(top: 8)),
                          Text(
                            "Lifted Index",
                            style: Styles.rowItemName,
                          ),
                          Text(
                            temp.lifted_index .toString(),
                            style: Styles.rowItem,
                          ),

                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Rh2m",
                            style: Styles.rowItemName,
                          ),
                          Text(
                            temp.rh2m.toString(),
                            style: Styles.rowItem,
                          ),
                          const Padding(padding: EdgeInsets.only(top: 8)),

                          Text(
                            "Temp2m",
                            style: Styles.rowItemName,
                          ),
                          Text(
                            temp.temp2m .toString(),
                            style: Styles.rowItem,
                          ),
                          const Padding(padding: EdgeInsets.only(top: 8)),
                          Text(
                            "Prec_type",
                            style: Styles.rowItemName,
                          ),
                          Text(
                            temp.prec_type .toString(),
                            style: Styles.rowItem,
                          ),

                          const Padding(padding: EdgeInsets.only(top: 8)),
                          Text(
                            "Lifted Index",
                            style: Styles.rowItemName,
                          ),
                          Text(
                            temp.lifted_index .toString(),
                            style: Styles.rowItem,
                          ),

                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Wind",
                            style: Styles.rowItem,
                          ),
                          Text(
                            "Speed",
                            style: Styles.rowItemName,
                          ),
                          Text(
                            wind10m.speed.toString(),
                            style: Styles.rowItem,
                          ),
                          const Padding(padding: EdgeInsets.only(top: 8)),
                          Text(
                            "Direction",
                            style: Styles.rowItemName,
                          ),
                          Text(
                            wind10m.direction,
                            style: Styles.rowItem,
                          ),
                          const Padding(padding: EdgeInsets.only(top: 8)),
                        ],
                      )
                    ],

                  ),
                  const Padding(padding: EdgeInsets.only(top: 8)),
                  Container(
                    height: 1,
                    color: Styles.rowDivider,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateModel>(
        builder: (context, model, child)
    {
      return
        SafeArea(
          child:  Column(
              children: <Widget>[
                Stack(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                        onPressed: () => Navigator.of(context).pop(false),
                        child: Icon(Icons.arrow_back_ios),
                      ),
                    ),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            forcast.product,
                            style: Styles.rowItemName,
                          ),
                          const Padding(padding: EdgeInsets.only(top: 8)),
                          Text(
                            forcast.init,
                            style: Styles.rowItem,
                          ),
                          const Padding(padding: EdgeInsets.only(top: 8)),
                        ],
                      ),
                    ),
                  ],
                ),

                Expanded(
                  child: ListView.builder(
                    itemCount: forcast.dataseries.length,
                    itemBuilder: (BuildContext context, int index) {
                      Tempratures temp = Tempratures.fromJson(
                          forcast.dataseries[index]);
                      return tempraturerow(temp, index + 1);
                    },
                  ),
                ),
              ],

          ),
        );
    }
    );
  }
}
