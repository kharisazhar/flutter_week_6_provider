import 'package:flutter/cupertino.dart';

import '../model/contact_model.dart';

class Contact with ChangeNotifier {
  final List<ContactModel> _contacts = [];

  List<ContactModel> get contacts => _contacts;

  void add(ContactModel contact) {
    _contacts.add(contact);
    notifyListeners();
  }
}
