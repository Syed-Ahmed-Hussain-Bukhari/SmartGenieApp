import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:my_smart_genie/View/chatBotPage.dart';
import 'package:my_smart_genie/View/splashscreen.dart';
import 'package:my_smart_genie/controller/GoogleAuthenticationController.dart';
import 'package:my_smart_genie/firebase_options.dart';


void main()async {
   WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
    Get.put(GoogleAuthController());
  //   Get.put(FacebookAuthenticationController());
  runApp(ChatbotApp());
}

class ChatbotApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SmartGenie',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MySplashScreen(),
    );
  }
}

