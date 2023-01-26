import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:nike_store/provider/main_provider.dart';
import 'package:nike_store/welcome%20screens/welcome_screen_01.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(
      MultiProvider(providers: [
        ChangeNotifierProvider(create: (_) => MainProvider()),
      ],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:AnimatedSplashScreen(
        splash: 'assets/images/Nike Logo.png',
        backgroundColor: Color(0xFF0D6EFD),
        nextScreen: WelcomeScreen1(),
        splashTransition: SplashTransition.fadeTransition,
        duration: 4000,
        // pageTransitionType: PageTransitionType.scale,
      ),
    );
  }
}

