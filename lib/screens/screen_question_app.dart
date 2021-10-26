import 'package:flutter/material.dart';

class ScreenQuestionApp extends StatefulWidget {
  const ScreenQuestionApp({Key? key}) : super(key: key);

  @override
  State<ScreenQuestionApp> createState() => _ScreenQuestionAppState();
}

class _ScreenQuestionAppState extends State<ScreenQuestionApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('dsfsf'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('data'),
        ],
      ),
    );
  }
}
