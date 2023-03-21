import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/contact_model.dart';
import '../provider/contact.dart';

class AltaContactPage extends StatelessWidget {
  const AltaContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final contactProvider = Provider.of<Contact>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alta Counter App Demo Provider"),
      ),
      body: Column(
        children: [
          ListView.builder(
              itemCount: contactProvider.contacts.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(contactProvider.contacts[index].name),
                  subtitle: Text(contactProvider.contacts[index].phoneNumber),
                );
              }),
          ElevatedButton(
            onPressed: () {
              contactProvider.add(
                ContactModel(
                  name: 'John Lenon 2',
                  phoneNumber: "0891111",
                ),
              );
            },
            child: const Text("Tambah Data Contact"),
          ),

          /// TODO EXAMPLE Contact Form :
          /// FORM
          /// BUTTON
          ///
          // ElevatedButton(
          //   onPressed: () {
          //     contactProvider.addContact(
          //       ContactModel(
          //         name: get data from FORM INPUT,
          //         phoneNumber: get data from FORM INPUT,
          //       ),
          //     ),
          //   },
          //   child: const Text("Tambah Data Contact"),
          // ),
        ],
      ),
    );
  }
}
