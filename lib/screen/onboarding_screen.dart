import 'package:flutter/material.dart';
import 'package:flutter_ai_agent_app/helper/pref.dart';
import 'package:flutter_ai_agent_app/model/onboard.dart';
import 'package:flutter_ai_agent_app/screen/home_screen.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:lottie/lottie.dart';

import '../helper/global.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final c = PageController();
    final list = [
      Onboard(
        title: 'Ask me anything',
        subtitle: 'Get intelligent responses to your questions',
        lottie: 'ai_ask_me',
        scale: 2.5,
      ),
      Onboard(
        title: 'Imagination to reality',
        subtitle: 'Let your imagination run wild and watch it come to life.',
        lottie: 'ai_play',
        scale: 1.0,
      ),
    ];
    return Scaffold(
      body: PageView.builder(
        controller: c,
        itemCount: list.length,
        itemBuilder: (ctx, ind) {
          final isLast = ind == list.length - 1;
          return Column(
            children: [
              SizedBox(
                height: mq.height * .6,
                child: Transform.scale(
                  scale: list[ind].scale,
                  child: Lottie.asset('assets/lottie/${list[ind].lottie}.json'),
                ),
              ),
              Text(
                list[ind].title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                  letterSpacing: .5,
                ),
              ),

              SizedBox(height: mq.height * .015),

              SizedBox(
                width: mq.width * .7,
                child: Text(
                  list[ind].subtitle,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
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
                  list.length,
                  (i) => Container(
                    height: 8,
                    width: i == ind ? 15 : 10,
                    decoration: BoxDecoration(
                      color: i == ind ? Colors.blue : Colors.grey,
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
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  if (isLast) {
                    Pref.showOnboarding = false;
                    /*Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => HomeScreen()),
                    );*/
                    Get.off(() => const HomeScreen());
                  } else {
                    c.nextPage(
                      duration: Duration(milliseconds: 600),
                      curve: Curves.ease,
                    );
                  }
                },
                child: Text(isLast ? 'Finish' : 'Next'),
              ),

              const Spacer(flex: 2),
            ],
          );
        },
      ),
    );
  }
}
