import 'package:flutter/material.dart';

import 'screens/screen_home_page.dart';
import './screens/screen_question_app.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/ScreenHomePage':
        return MaterialPageRoute(
          builder: (_) => const ScreenHomePage(),
        );
      case '/ScreenQuestionApp':
        return MaterialPageRoute(
          builder: (_) => const ScreenQuestionApp(),
        );
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
