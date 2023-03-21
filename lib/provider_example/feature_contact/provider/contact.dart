import 'package:flutter/cupertino.dart';

import '../model/contact_model.dart';

class Contact with ChangeNotifier {
  final List<ContactModel> _contacts = [];

  List<ContactModel> get contacts => _contacts;

  /// EXAMPLE : Saat aplikasi pertama di jalankan
  /// Panggil getContactListDB()
  void getContactListDB() {}

  void initData() {
    _contacts.add(
      ContactModel(
        name: "Kontak Pertama",
        phoneNumber: "000",
      ),
    );
    notifyListeners();
  }

  void add(ContactModel contact) {
    _contacts.add(contact);
    notifyListeners();
  }

  /// TODO EXAMPLE Contact Form:
  void addContact(ContactModel contact) {
    _contacts.add(contact);
    notifyListeners();
  }
}
