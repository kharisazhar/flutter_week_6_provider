import 'package:flutter/material.dart';
import 'package:flutter_week_6_state_management/provider_example/feature_counter/cara_1/alta_counter_page.dart';
import 'package:flutter_week_6_state_management/provider_example/feature_counter/cara_3/ui/alta_counter_main.dart';

import 'provider_example/feature_contact/ui/alta_contact_main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),

        /// TODO : Change Root Here
        home:  const AltaContactMain());
  }
}
