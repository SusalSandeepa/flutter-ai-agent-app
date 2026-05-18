import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ai_agent_app/helper/global.dart';
import 'package:flutter_ai_agent_app/helper/pref.dart';
import 'package:flutter_ai_agent_app/screen/splash_screen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Pref.initialize();
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: appName,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
