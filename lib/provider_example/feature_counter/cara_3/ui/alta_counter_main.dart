import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/counter_manager.dart';
import 'alta_counter_page.dart';

class AltaCounterMain extends StatelessWidget {
  const AltaCounterMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterManager(),
      child: const AltaCounterPage(),
    );
  }
}
