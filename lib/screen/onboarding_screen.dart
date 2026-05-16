import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../helper/global.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: mq.height * .6,
            child: Transform.scale(
              scale: 2.5,
              child: Lottie.asset('assets/lottie/ai_ask_me.json'),
            ),
          ),
          Text(
            'Ask me anything',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w900,
              letterSpacing: .5,
            ),
          ),

          SizedBox(height: mq.height * .015),

          SizedBox(
            width: mq.width * .7,
            child: Text(
              'Get intelligent responses to your questions',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black54,
                fontWeight: FontWeight.w400,
                letterSpacing: .5,
              ),
            ),
          ),

          const Spacer(),

          //dots
          Wrap(
            spacing: 10,
            children: List.generate(
              2,
              (i) => Container(
                height: 8,
                width: 10,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
              ),
            ),
          ),

          const Spacer(),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
              elevation: 0,
              textStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
              minimumSize: Size(mq.width * .3, 40),
              backgroundColor: const Color.fromARGB(255, 0, 140, 255),
            ),
            onPressed: () {},
            child: const Text('Next', style: TextStyle(color: Colors.white)),
          ),

          const Spacer(flex: 2),
        ],
      ),
    );
  }
}
