import 'package:flutter/material.dart';

import '../widgets/screen_home_page_drawer.dart';
import '../widgets/screen_home_page_body.dart';

class ScreenHomePage extends StatefulWidget {
  const ScreenHomePage({Key? key}) : super(key: key);

  @override
  State<ScreenHomePage> createState() => _ScreenHomePageState();
}

class _ScreenHomePageState extends State<ScreenHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen Home Page'),
      ),
      drawer: ScreenHomePageDrawer(),
      body: ScreenHomePageBody(),
    );
  }
}
