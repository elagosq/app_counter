import 'package:counter_bloc/ui/home_counter.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Bloc Counter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeCounter(),
    );
  }
}
