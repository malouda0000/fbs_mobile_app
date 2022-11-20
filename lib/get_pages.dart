import 'package:fbs_mobile_app/view/screens/auth/signin_screen.dart';
import 'package:fbs_mobile_app/view/screens/auth/signup.dart';
import 'package:fbs_mobile_app/view/screens/main%20screen/main_screen.dart';
import 'package:get/get.dart';

import 'view/screens/custom onbording/custom_onbording.dart';
import 'view/widgets/shared/under_development_screen.dart';

class AppRoute {
// app inital
  static const String customOnbordingScreen = '/';
  static const String customSplashScreen = '/splashScreen';

// auth
  static const String signUpScreen = '/signUpScreen';
  static const String signInScreen = '/SinInScreen';
  static const String forgetPasswordScreen = '/forgetPasswordScreen';
  static const String verifyCodeScreenForRestPass =
      '/verifyCodeScreenForResetPass';
  static const String verifyCodeScreenForSignup = '/verifyCodeScreenForSignup';
  static const String resetPasswordScreen = '/resetPasswordScreen';
  static const String succResetedPasswordScreen = '/succResetedPasswordScreen';
  static const String successfullySignedupScreen = '/succSignedupScreen';

// main screens
  static const String mainScreen = '/mainScreen';
  static const String detailsScreen = '/detailsScreen';
  static const String foodMenueScreen = '/foodMenueScreen';
  static const String cartScreen = '/cartScreen';
  static const String aboutScreen = '/aboutScreen';

// setting screens
  static const String settingScreen = '/settingScreen';
  static const String themeScreen = '/themeScreen';
  static const String localizationScreen = '/localizationScreen';
  static const String userAccountScreen = '/userAccountScreen';

// seconders screens

  static const String underDevelopmentScreen = '/underDevelopmentScreen';
  static const String errorMessageScreen = '/errorMessageScreen';
}

class GetPages {
  // initaling app
  List<GetPage<dynamic>>? getpages = [
    GetPage(
      name: AppRoute.customOnbordingScreen,
      page: () => const CustomOnBordingScreen(),
      middlewares: [
        // FirstTimeInit(),
      ],
    ),

// auth screens

    GetPage(
      name: AppRoute.signInScreen,
      page: () => const SigninScreen(),
      // middlewares: [AuthMiddleWare()],
    ),

    GetPage(
      name: AppRoute.signUpScreen,
      page: () => const SignupScreen(),
      // middlewares: [AuthMiddleWare()],
    ),

//     GetPage(
//       name: AppRoute.forgetPasswordScreen,
//       page: () => const ForgetPasswordScreen(),
//     ),

//     GetPage(
//       name: AppRoute.verifyCodeScreenForRestPass,
//       page: () => const VerifyCodeScreenForResetPass(),
//     ),

//     GetPage(
//       name: AppRoute.verifyCodeScreenForSignup,
//       page: () => const VerifyCodeScreenForSignup(),
//     ),
//     GetPage(
//       name: AppRoute.resetPasswordScreen,
//       page: () => const ResetPasswordScreen(),
//     ),

//     GetPage(
//       name: AppRoute.succResetedPasswordScreen,
//       page: () => const SuccessfullyResetedPasswordScreen(),
//     ),

//     GetPage(
//       name: AppRoute.successfullySignedupScreen,
//       page: () => const SuccessfullySignedupScreen(),
//     ),

//     // main screens
    GetPage(
      name: AppRoute.mainScreen,
      page: () => const MainScreen(),
      // binding: LocalizationBindings(),
    ),
//     GetPage(
//       name: AppRoute.customSplashScreen,
//       page: () => CustomSplashScreen(
//         haveDiscription: false,
//         progress: false,
//       ),
//     ),
//     GetPage(
//       name: AppRoute.detailsScreen,
//       page: () => const DetialsScreen(),
//     ),

// // setting screens
//     GetPage(
//       name: AppRoute.userAccountScreen,
//       page: () => const UserAccount(),
//     ),
//     GetPage(
//       name: AppRoute.localizationScreen,
//       page: () => const LocaliaztionScreen(),
//       binding: LocalizationBindings(),
//     ),
//     GetPage(
//       name: AppRoute.themeScreen,
//       page: () => const ThemeScreen(),
//     ),
//     GetPage(
//       name: AppRoute.aboutScreen,
//       page: () => const AboutScreen(),
//       // bindings: [],
//     ),
    GetPage(
      name: AppRoute.underDevelopmentScreen,
      page: () => const UnderDevelopment(),
    ),
//     GetPage(
//       name: AppRoute.foodMenueScreen,
//       page: () => const FoodMenueScreen(),
//       binding: AddingMealBindings(),
//     ),
//     GetPage(
//       name: AppRoute.errorMessageScreen,
//       page: () => const ErrorMessageScreen(),
//     ),
//     GetPage(
//       name: AppRoute.cartScreen,
//       page: () => const CartScreen(),
//       binding: CartBindings(),
//     ),
  ];
}
