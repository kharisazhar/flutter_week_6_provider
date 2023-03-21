import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/counter_manager.dart';

class AltaCounterPage extends StatelessWidget {
  const AltaCounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final providerCounter = Provider.of<CounterManager>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alta Counter App Demo Provider 3.0"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${providerCounter.counter}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          providerCounter.increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
