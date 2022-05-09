import 'dart:math';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:section_25/task_1/screen/contact/contacts_view_model.dart';
import 'package:section_25/task_1/screen/task_2/create_contact.dart';
import 'package:section_25/task_1/screen/task_2/detail_contact.dart';
import 'package:section_25/widget/custome_route/custome_page_route.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final contactView = Provider.of<ContactViewModel>(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text("Contact"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context)
                .push(CustomePageRoute(child: const CreateContact()));
          },
          child: const Icon(Icons.add),
        ),
        body: FutureBuilder(
            future: contactView.getAllContacts(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (contactView.contacts.isEmpty) {
                return const Center(child: CircularProgressIndicator());
              } else {
                return ListView.separated(
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      onTap: () {
                        Navigator.of(context).push(CustomePageRoute(
                            child: DeitalContact(
                                contact: contactView.contacts[index])));
                      },
                      leading: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.primaries[Random().nextInt(
                              Colors.primaries.length,
                            )],
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5))),
                        child: Center(
                            child: Text(
                          contactView.contacts[index].name[0],
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                      title: Text(contactView.contacts[index].name),
                      subtitle: Text(contactView.contacts[index].phone),
                      trailing: IconButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: const Text(
                                        "Apakah Yakin Ingin Dihapus?"),
                                    content: SingleChildScrollView(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          TextButton(
                                              onPressed: () async {
                                                contactView.delete(contactView
                                                    .contacts[index].id);
                                                Navigator.pop(context);
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(const SnackBar(
                                                        content: Text(
                                                            "Data Berhasil Dihapus")));
                                              },
                                              child: const Text("Yes")),
                                          TextButton(
                                              onPressed: () async {
                                                Navigator.pop(context);
                                              },
                                              child: const Text("No"))
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          },
                          icon: const Icon(Icons.delete)),
                    );
                  },
                  itemCount: contactView.contacts.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      height: 0,
                      child: Divider(
                        indent: 75,
                      ),
                    );
                  },
                );
              }
            }));
  }
}
