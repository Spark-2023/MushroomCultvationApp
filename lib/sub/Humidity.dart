import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HumidityGraph extends StatelessWidget {
  const HumidityGraph(
      {Key? key,
      required this.theWidth,
      required this.theHeight,
      required this.theChild})
      : super(key: key);
  // ignore: prefer_typing_uninitialized_variables
  final theWidth;
  // ignore: prefer_typing_uninitialized_variables
  final theHeight;
  // ignore: prefer_typing_uninitialized_variables
  final theChild;

  @override
  Widget build(BuildContext context) {
    double theWidth = MediaQuery.of(context).size.width;
    double theHeight = MediaQuery.of(context).size.height;
    return ClipRRect(
      child: Container(
        margin: const EdgeInsets.all(1),
        width: theWidth,
        height: theHeight,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Center(
                  // ignore: avoid_unnecessary_containers
                  child: Container(
                    height: theHeight * 0.02,
                    margin: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                    child: const Center(
                      child: Text(
                        'HUMIDITY',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          height: 1,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: theHeight * 0.03,
                  //color: Colors.blue,
                  margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: const Center(
                    child: Text(
                      '75%',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 20,
                        height: 1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: RotatedBox(
                    quarterTurns: -1,
                    child: Container(
                      margin: const EdgeInsets.only(right: 10),
                      width: theHeight * 0.31,
                      color: Colors.grey[300],
                      child: LinearPercentIndicator(
                        width: theHeight * 0.31,
                        lineHeight: theWidth * 0.06,
                        percent: 0.75,
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        progressColor: Colors.lightBlue,
                        backgroundColor: Colors.black87,
                        animation: true,
                        animationDuration: 5000,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
