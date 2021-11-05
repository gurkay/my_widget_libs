import 'package:flutter/material.dart';
import './screens/screen_divider_component.dart';
import './screens/screen_list_component.dart';

import './screens/screen_home_page.dart';
import './screens/screen_question_app.dart';
import './screens/screen_life_time_app.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/screen_home_page':
        print('settings.name::: ${settings.name}');
        return MaterialPageRoute(
          builder: (_) => const ScreenHomePage(),
        );
      case '/screen_list_component':
        print('settings.name::: ${settings.name}');
        return MaterialPageRoute(
          builder: (_) => const ScreenListComponent(),
        );
      case '/screen_divider_component':
        print('settings.name::: ${settings.name}');
        return MaterialPageRoute(
          builder: (_) => const ScreenDividerComponent(),
        );
      case '/screen_question_app':
        print('settings.name::: ${settings.name}');
        return MaterialPageRoute(
          builder: (_) => const ScreenQuestionApp(),
        );
      case '/screen_life_time_app':
        print('settings.name::: ${settings.name}');
        return MaterialPageRoute(
          builder: (_) => const ScreenLifeTimeApp(),
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
