import 'package:flutter/material.dart';

class AltaCounterPage extends StatelessWidget {
  AltaCounterPage({super.key});

  /// TODO STEP 1 :
  final ValueNotifier<int> _counter = ValueNotifier(0);

  /// Example : Data List
  final ValueNotifier<List<String>> _contacts = ValueNotifier([]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

            /// TODO STEP 2 :
            /// TEXT COUNTER :
            // AnimatedBuilder(
            //   animation: _counter,
            //   builder: (context, widget) {
            //     return Text(
            //       '${_counter.value}',
            //       style: Theme.of(context).textTheme.headlineMedium,
            //     );
            //   },
            // ),

            ValueListenableBuilder<int>(
              valueListenable: _counter,
              builder: (context, value, child) {
                return Text(
                  '${_counter.value}',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // _counter.value = _counter.value +1 ;
          /// TODO STEP 3 :
          _counter.value++;
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
