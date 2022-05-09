import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:section_27/model/contact_model.dart';
import 'package:section_27/screen/contact/contacts_view_model.dart';

class AddContact extends StatefulWidget {
  const AddContact({Key? key}) : super(key: key);

  @override
  State<AddContact> createState() => _CreateContactsLocalState();
}

class _CreateContactsLocalState extends State<AddContact> {
  String? name;
  String? phone;

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final contactView = Provider.of<ContactViewModel>(context);
    return Scaffold(
      appBar:
          AppBar(title: const Text("Create New Contact"), centerTitle: true),
      body: Form(
          key: _formKey,
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextFormField(
                    key: const ValueKey("name_field"),
                    decoration: InputDecoration(
                      hintText: "Nama",
                      icon: const Icon(Icons.people),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                    onChanged: (value) {
                      name = value;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Nama tidak boleh kosong';
                      } else {
                        return null;
                      }
                    }),
                const SizedBox(height: 10),
                TextFormField(
                  key: const ValueKey("phone_field"),
                  decoration: InputDecoration(
                    hintText: "Nomor Telpon",
                    icon: const Icon(Icons.phone),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                  onChanged: (value) {
                    phone = value;
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Nomor tidak boleh kosong';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  child: const Text(
                    "Submit",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      contactView.add(ContactModel(name: name!, phone: phone!));
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text("Data Berhasil Ditambahkan")));
                    }
                  },
                ),
              ],
            ),
          )),
    );
  }
}
