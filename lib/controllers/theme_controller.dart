import 'package:fbs_mobile_app/core/constants/my_themes.dart';
import 'package:fbs_mobile_app/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ThemeController extends GetxController {
  initalTheme();
  changeThemeMode(value);
  saveThemeStatus();
}

class ThemeControllerImp extends ThemeController {
  // bool isDarkMod = mySharedPrefes!.getBool('dark') == true ? true : false;
  RxBool isDarkMod =
      mySharedPrefes!.getBool('dark') == true ? true.obs : false.obs;
  initalTheme() async {
    bool isDarkMod = mySharedPrefes!.getBool('dark') == true ? true : false;
    return isDarkMod;
  }

  changeThemeMode(value) {
    isDarkMod.value = value;
    Get.changeThemeMode(
      isDarkMod.value ? ThemeMode.dark : ThemeMode.light,
    );
    saveThemeStatus();
  }

  saveThemeStatus() async {
    // SharedPreferences pref = await _prefs;
    mySharedPrefes!.setBool('dark', isDarkMod.value);
  }

  // update();
}




/* 

ObxValue(
  (data) => Switch(
     value: _isLightTheme.value,
     onChanged: (val) {
       _isLightTheme.value = val;
       Get.changeThemeMode(
          _isLightTheme.value ? ThemeMode.light : ThemeMode.dark,
        );
        _saveThemeStatus();
      },
    ),
    false.obs,
 ),

*/ 


/* 


  RxBool _isLightTheme = false.obs;

  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  _saveThemeStatus() async {
    SharedPreferences pref = await _prefs;
    pref.setBool('theme', _isLightTheme.value);
  }

  _getThemeStatus() async {
    var _isLight = _prefs.then((SharedPreferences prefs) {
      return prefs.getBool('theme') != null ? prefs.getBool('theme') : true;
    }).obs;
    _isLightTheme.value = (await _isLight.value)!;
    Get.changeThemeMode(_isLightTheme.value ? ThemeMode.light : ThemeMode.dark);
  }

  */