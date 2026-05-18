import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ai_agent_app/helper/global.dart';
import 'package:flutter_ai_agent_app/helper/pref.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    // wait for 2 seconds and then navigate to home screen
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    Pref.showOnboarding = false;
  }

  @override
  Widget build(BuildContext context) {
    //initializing device size
    mq = MediaQuery.sizeOf(context);

    return const Scaffold(body: Center(child: Text('Hello')));
  }
}
