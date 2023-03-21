import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/contact.dart';
import 'alta_contact_page.dart';

class AltaContactMain extends StatelessWidget {
  const AltaContactMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Contact()..initData(),
        ),
      ],
      child: const AltaContactPage(),
    );
  }
}
