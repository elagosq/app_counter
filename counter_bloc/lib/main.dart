import 'package:counter_bloc/app.dart';
import 'package:counter_bloc/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => CounterCubit(),
    child: const MyApp(),
  ));
}
