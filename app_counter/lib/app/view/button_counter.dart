import 'package:app_counter/app/view/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ButtonCounter extends StatelessWidget {
  const ButtonCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CounterProvider(),
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              color: Theme.of(context).colorScheme.primary,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Text(
                    'App Counter',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  const _ResultText(),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      _IncrementButton(),
                      _DecrementButton(),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _ResultText extends StatelessWidget {
  const _ResultText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<CounterProvider>(
      builder: (_, counterProvider, child) {
        return Text('Resultado: ${counterProvider.counter}');
      },
    );
  }
}

class _IncrementButton extends StatelessWidget {
  const _IncrementButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        final result = context.read<CounterProvider>().counter;
        print('Increment Button : $result');

        if (result < 10) {
          context.read<CounterProvider>().increment();
        }
      },
      child: Icon(Icons.add),
    );
  }
}

class _DecrementButton extends StatelessWidget {
  const _DecrementButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        final result = context.read<CounterProvider>().counter;
        print('Decrement Button : $result');

        if (result > 0) {
          context.read<CounterProvider>().decrement();
        }
      },
      child: Icon(Icons.remove),
    );
  }
}
