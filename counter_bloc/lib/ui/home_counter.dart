import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/counter_cubit.dart';

class HomeCounter extends StatelessWidget {
  const HomeCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Bloc'),
        centerTitle: true,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              onPressed: () {
                BlocProvider.of<CounterCubit>(context).increment();
              },
              child: const Icon(Icons.add),
            ),
            const SizedBox(
              width: 20,
            ),
            BlocBuilder<CounterCubit, CounterState>(
              builder: (context, state) {
                return Text(
                  state.number.toString(),
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                );
              },
            ),
            const SizedBox(
              width: 20,
            ),
            FloatingActionButton(
              onPressed: () {
                BlocProvider.of<CounterCubit>(context).decrement();
              },
              child: const Icon(Icons.remove),
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
