import 'package:fbs_mobile_app/core/constants/app_color.dart';
import 'package:fbs_mobile_app/core/constants/my_themes.dart';
import 'package:fbs_mobile_app/get_pages.dart';
import 'package:fbs_mobile_app/models/modles/custom_onbording.dart';
import 'package:fbs_mobile_app/view/screens/auth/signin_screen.dart';
import 'package:fbs_mobile_app/view/screens/auth/signup.dart';
import 'package:fbs_mobile_app/view/screens/custom%20onbording/custom_onbording.dart';
import 'package:fbs_mobile_app/view/screens/main%20screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   // primarySwatch: AppColor.kPrimaryColor,
      //   primarySwatch: Colors.indigo,
      // ),

      // theme: MyThemes.customDarkTheme,
      theme: MyThemes.customLightTheme,
      darkTheme: MyThemes.customDarkTheme,
      // themeMode: themeContorller.myThemeMode,
      themeMode: ThemeMode.system,

      getPages: GetPages().getpages,
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      // home: const SigninScreen(),
      home: const MainScreen(),
      // home: const CustomOnBordingScreen(),
    );
  }
}
