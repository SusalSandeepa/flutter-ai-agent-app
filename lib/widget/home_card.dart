import 'package:flutter/material.dart';
import 'package:flutter_ai_agent_app/helper/global.dart';
import 'package:flutter_ai_agent_app/model/home_type.dart';
import 'package:lottie/lottie.dart';

class HomeCard extends StatelessWidget {
  final HomeType homeType;
  const HomeCard({super.key, required this.homeType});

  @override
  Widget build(BuildContext context) {
    //create card with image and text

    return Card(
      color: Colors.blue.withValues(alpha: .2),
      elevation: 0,
      margin: EdgeInsets.only(bottom: mq.height * .02),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      child: homeType.leftAlign
          ? Row(
              children: [
                SizedBox(
                  width: mq.width * .3,
                  height: mq.height * .14,
                  child: Padding(
                    padding: homeType.padding,
                    child: Lottie.asset(homeType.lottie, fit: BoxFit.contain),
                  ),
                ),

                const Spacer(),

                Text(
                  homeType.title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                  ),
                ),

                const Spacer(flex: 2),
              ],
            )
          : Row(
              children: [
                const Spacer(),

                Text(
                  homeType.title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                  ),
                ),

                const Spacer(),

                SizedBox(
                  width: mq.width * .3,
                  height: mq.height * .14,
                  child: Padding(
                    padding: homeType.padding,
                    child: Lottie.asset(homeType.lottie, fit: BoxFit.contain),
                  ),
                ),
              ],
            ),
    );
  }
}
