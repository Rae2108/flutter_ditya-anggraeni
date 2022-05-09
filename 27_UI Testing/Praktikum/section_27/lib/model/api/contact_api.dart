import 'package:dio/dio.dart';

import '../contact_model.dart';

class ContactApi {
  static Future<List<ContactModel>> getContacts() async {
    final response = await Dio().get(
      "https://api.jepriana.com/contacts",
    );
    List<ContactModel> contacts = (response.data['values'] as List)
        .map((e) =>
            ContactModel(id: e['id'], name: e['name'], phone: e['phone']))
        .toList();
    return contacts;
  }

  static Future<void> postContact(contact) async {
    final data = contact.toJson();
    await Dio().post("https://api.jepriana.com/contacts", data: data);
  }

  static Future<void> putContact(contact, int index) async {
    final data = contact.toJson();
    await Dio().put("https://api.jepriana.com/contacts/$index", data: data);
  }

  static Future<void> deleteContact(int id) async {
    await Dio().delete("https://api.jepriana.com/contacts/$id");
  }
}
