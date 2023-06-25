import 'package:flutter/material.dart';
import 'package:task_sample_app/features/auth/views/login_screen.dart';
import 'package:task_sample_app/features/sample_app_screen/views/sample_app_screen.dart';
import 'package:task_sample_app/features/user/profile/views/profile_screen.dart';
import 'package:task_sample_app/utils/error_screen.dart';
import 'navigation.dart';

class AppRoutes {
  static const String userLoginScreen = '/userLogin';
  static const String sampleAppScreen = '/sampleAppScreen';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case userLoginScreen:
        return _buildRoute(const UserLoginScreen());
      case sampleAppScreen:
        return _buildRoute(const SampleAppScreen());

      default:
        return unDefinedRoute();
    }
  }

  static unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => const Scaffold(
              backgroundColor: Colors.white,
            ));
    return MaterialPageRoute(builder: (_) => const ErrorScreen());
  }

  static _buildRoute(Widget widget, {int? duration = 400}) {
    return forwardRoute(widget, duration);
  }

  static _buildNormalRoute(Widget widget) {
    return MaterialPageRoute(builder: (_) => widget);
  }
}