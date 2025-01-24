import 'package:flutter/material.dart';
import 'package:fruits_app/core/helper_functions/on_generate_ruote.dart';
import 'package:fruits_app/features/splash/presentation/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,

    );
  }
}


