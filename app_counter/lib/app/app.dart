import 'package:app_counter/app/view/button_counter.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const primary = Color(0xFF1E90FF);
    const textBody = Color(0xFF000000);
    const backgroundColor = Color(0xFFF5F5F5);

    return MaterialApp(
      title: 'App Counter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: primary,
          primary: primary,
          secondary: primary,
        ),
        scaffoldBackgroundColor: backgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: textBody),
      ),
      home: ButtonCounter(),
    );
  }
}
