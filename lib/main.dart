import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../controllers/base_initial_data.dart';
import '../route_generator.dart';
import '../screens/screen_home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.manual,
    overlays: [
      SystemUiOverlay.bottom,
      SystemUiOverlay.top,
    ],
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Init.instance.initialize(),
      builder: (context, AsyncSnapshot asyncSnapshot) {
        if (asyncSnapshot.connectionState == ConnectionState.waiting) {
          return MaterialApp(home: Splash());
        } else {
          return MultiProvider(
            providers: [
              ChangeNotifierProvider(
                create: (_) => BaseInitialData()..load(),
              ),
            ],
            child: MaterialApp(
              debugShowCheckedModeBanner: true,
              title: 'Halim Mühendislik',
              theme: ThemeData(
                primarySwatch: Colors.purple,
                fontFamily: 'Quicksand',
                textTheme: ThemeData.light().textTheme.copyWith(
                      subtitle1: const TextStyle(
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      button: TextStyle(color: Colors.white),
                    ),
                appBarTheme: const AppBarTheme(
                  titleTextStyle: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              home: const ScreenHomePage(),
              onGenerateRoute: RouteGenerator.generateRoute,
            ),
          );
        }
      },
    );
  }
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool lightMode =
        MediaQuery.of(context).platformBrightness == Brightness.light;
    return Scaffold(
      backgroundColor: lightMode
          ? Colors.blue.withOpacity(0.95)
          : Colors.blue.withOpacity(1.0),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icons/halim_logo.png',
                height: MediaQuery.of(context).size.height * 0.50,
                width: MediaQuery.of(context).size.width * 0.50,
              ),
              const SizedBox(
                height: 5.0,
              ),
              Text(
                'Halim Mühendislik',
                style: GoogleFonts.dancingScript(
                  fontStyle: FontStyle.normal,
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Init {
  Init._();
  static final instance = Init._();

  Future initialize() async {
    await Future.delayed(const Duration(seconds: 3));
  }
}
