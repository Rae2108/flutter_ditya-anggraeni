import 'package:flutter/material.dart';
import 'package:section_27/model/api/contact_api.dart';
import 'package:section_27/model/contact_model.dart';

enum ContactViewState { none, loading, error }

class ContactViewModel with ChangeNotifier {
  ContactViewState _state = ContactViewState.none;
  ContactViewState get state => _state;

  List _contacts = [];
  List get contacts => _contacts;

  changeState(ContactViewState s) {
    _state = s;
  }

  getAllContacts() async {
    changeState(ContactViewState.loading);

    try {
      final c = await ContactApi.getContacts();
      _contacts = c;
      _contacts
          .sort((a, b) => a.name.toLowerCase().compareTo(b.name.toLowerCase()));
      changeState(ContactViewState.none);
    } catch (e) {
      changeState(ContactViewState.error);
    }
  }

  void add(ContactModel contact) async {
    await ContactApi.postContact(contact);
    _contacts
        .sort((a, b) => a.name.toLowerCase().compareTo(b.name.toLowerCase()));
    notifyListeners();
  }

  void delete(int index) async {
    await ContactApi.deleteContact(index);
    _contacts
        .sort((a, b) => a.name.toLowerCase().compareTo(b.name.toLowerCase()));
    notifyListeners();
  }

  void edit(ContactModel contact, int index) async {
    await ContactApi.putContact(contact, index);
    _contacts
        .sort((a, b) => a.name.toLowerCase().compareTo(b.name.toLowerCase()));
    notifyListeners();
  }
}
