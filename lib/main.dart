import 'package:fbs_mobile_app/controllers/theme_controller.dart';
import 'package:fbs_mobile_app/core/constants/app_color.dart';
import 'package:fbs_mobile_app/core/constants/my_themes.dart';
import 'package:fbs_mobile_app/get_pages.dart';
import 'package:fbs_mobile_app/models/modles/custom_onbording.dart';
import 'package:fbs_mobile_app/temp_test_widgets.dart';
import 'package:fbs_mobile_app/view/screens/auth/signin_screen.dart';
import 'package:fbs_mobile_app/view/screens/auth/signup.dart';
import 'package:fbs_mobile_app/view/screens/custom%20onbording/custom_onbording.dart';
import 'package:fbs_mobile_app/view/screens/main%20screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? mySharedPrefes;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  mySharedPrefes = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeControllerImp themeControllerImp = Get.put(ThemeControllerImp());

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: MyThemes.customDarkTheme,
      theme: MyThemes.customLightTheme,
      darkTheme: MyThemes.customDarkTheme,
      // themeMode: themeContorller.myThemeMode,
      // themeMode: ThemeMode.system,
      // themeMode: ThemeMode.dark,
      // themeMode: themeControllerImp.initalTheme() == true
      //     ? ThemeMode.dark
      //     : ThemeMode.light,
      themeMode:
          themeControllerImp.isDarkMod.value ? ThemeMode.dark : ThemeMode.light,

      getPages: GetPages().getpages,
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      // home: const SigninScreen(),
      home: const MainScreen(),
      // home: const TempTestWidget(),
      // home: const CustomOnBordingScreen(),

/*
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dark Mode Demo'),
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(
                  () => Text(
                    'Click on switch to change to ${_isLightTheme.value ? 'Dark' : 'Light'} theme',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),  
      
       */
    );
  }
}
