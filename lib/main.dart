import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider_example/feature_contact/alta_contact_page.dart';
import 'provider_example/feature_contact/model/contact_model.dart';
import 'provider_example/feature_contact/provider/contact.dart';

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
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => Contact()
              ..add(ContactModel(name: 'John Lenon', phoneNumber: '090')),
          )
        ],

        /// TODO : Change Root Here
        child: const AltaContactPage(),
      ),
    );
  }
}
