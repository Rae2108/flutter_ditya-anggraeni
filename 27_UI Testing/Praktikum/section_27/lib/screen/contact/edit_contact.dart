import 'package:flutter/material.dart';

class EditContact extends StatefulWidget {
  const EditContact({Key? key}) : super(key: key);

  @override
  State<EditContact> createState() => _CreateContactsLocalState();
}

class _CreateContactsLocalState extends State<EditContact> {
  int? id;
  String? name;
  String? phone;

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Edit Contact"), centerTitle: true),
      body: Form(
          key: _formKey,
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextFormField(
                    key: const ValueKey("id_field"),
                    decoration: InputDecoration(
                      hintText: "ID",
                      icon: const Icon(Icons.people),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                    onChanged: (value) {
                      id = int.parse(value);
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'ID tidak boleh kosong';
                      } else {
                        return null;
                      }
                    }),
                const SizedBox(height: 10),
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
