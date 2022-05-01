import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../model/contacts_model.dart';

class ContactManager with ChangeNotifier {
  late SharedPreferences _prefs;
  final List<ContactsModel> _contacts = [];
  SharedPreferences get prefs => _prefs;
  List<ContactsModel> get contacts => _contacts;

  saveSharedPreference() async {
    _prefs = await SharedPreferences.getInstance();
    if (_prefs.getStringList('name') != null) {
      for (var i = 0; i < _prefs.getStringList('name')!.length; i++) {
        _contacts.add(ContactsModel(
            name: _prefs.getStringList('name')![i],
            phone: _prefs.getStringList('phone')![i]));
        notifyListeners();
      }
    }
  }

  void add(ContactsModel contacts) async {
    _contacts.add(contacts);
    _contacts
        .sort((a, b) => a.name.toLowerCase().compareTo(b.name.toLowerCase()));
    _prefs.setStringList('name', _contacts.map((e) => e.name).toList());
    _prefs.setStringList('phone', _contacts.map((e) => e.phone).toList());
    notifyListeners();
  }

  void delete(int index) {
    _contacts.removeAt(index);
    notifyListeners();
    _prefs.setStringList('name', _contacts.map((e) => e.name).toList());
    _prefs.setStringList('phone', _contacts.map((e) => e.phone).toList());
  }
}
