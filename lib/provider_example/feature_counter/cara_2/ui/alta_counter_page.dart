import 'package:flutter/material.dart';
import 'package:flutter_week_6_state_management/provider_example/feature_counter/cara_2/providers/counter_manager.dart';
import 'package:provider/provider.dart';

class AltaCounterPage extends StatelessWidget {
  const AltaCounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterManager(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Alta Counter App Demo Provider"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Consumer<CounterManager>(builder: (context, model, child) {
                return Text(
                  '${model.counter}',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              }),
            ],
          ),
        ),
        floatingActionButton: Consumer<CounterManager>(
          builder: (context, model, child) {
            return FloatingActionButton(
              onPressed: () {
                model.increment();
              },
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            );
          },
        ),
      ),
    );
  }
}
