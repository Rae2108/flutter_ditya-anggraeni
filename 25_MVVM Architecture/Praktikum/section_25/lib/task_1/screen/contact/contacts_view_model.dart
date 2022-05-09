import 'package:flutter/material.dart';
import 'package:section_25/task_1/model/api/contact_api.dart';
import 'package:section_25/task_1/model/contact_model.dart';

class ContactViewModel with ChangeNotifier {
  List _contacts = [];
  List get contacts => _contacts;

  getAllContacts() async {
    final c = await ContactApi.getContacts();

    _contacts = c;
    _contacts
        .sort((a, b) => a.name.toLowerCase().compareTo(b.name.toLowerCase()));
  }

  void add(ContactModel contact) async {
    await ContactApi.postContact(contact);
    notifyListeners();
  }

  void delete(int index) async {
    await ContactApi.deleteContact(index);
    notifyListeners();
  }

  void edit(ContactModel contact, int index) async {
    await ContactApi.putContact(contact, index);
    notifyListeners();
  }
}
