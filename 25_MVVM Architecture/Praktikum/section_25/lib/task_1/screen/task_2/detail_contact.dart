import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:section_25/task_1/model/contact_model.dart';
import 'package:section_25/task_1/screen/contact/contacts_view_model.dart';

class DeitalContact extends StatefulWidget {
  final ContactModel contact;
  const DeitalContact({Key? key, required this.contact}) : super(key: key);

  @override
  State<DeitalContact> createState() => _DeitalContactState();
}

class _DeitalContactState extends State<DeitalContact> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    String name = widget.contact.name;
    String phone = widget.contact.phone;
    final contactView = Provider.of<ContactViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.contact.name),
        centerTitle: true,
      ),
      body: Form(
          key: _formKey,
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextFormField(
                    initialValue: widget.contact.name,
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
                  initialValue: widget.contact.phone,
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
                    "Edit",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      contactView.edit(ContactModel(name: name, phone: phone),
                          widget.contact.id!);
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text("Data Berhasil Diubah")));
                    }
                  },
                ),
              ],
            ),
          )),
    );
  }
}
