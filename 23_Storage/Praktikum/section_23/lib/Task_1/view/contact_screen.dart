import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:section_23/Task_1/view/view_model/contacts_manager.dart';
import 'package:section_23/Task_1/view/create_contacts.dart';
import 'package:section_23/Task_2/view/contact_screen_2.dart';

import '../../widget/custome_page_route.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final contactManagerProvider =
        Provider.of<ContactManager>(context, listen: false);
    return Scaffold(
        appBar: AppBar(
          title: const Text("Contact Provider"),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(CustomePageRoute(child: const ContactScreen2()));
                },
                child: const Text("Task 2",
                    style: TextStyle(fontSize: 18, color: Colors.white)))
          ],
        ),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              Navigator.of(context)
                  .push(CustomePageRoute(child: const CreateContacts()));
            }),
        body: Consumer<ContactManager>(
          builder: (context, contactsManager, _) => ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () => showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text("Apakah Yakin Ingin Dihapus?"),
                        content: SingleChildScrollView(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              TextButton(
                                  onPressed: () async {
                                    contactManagerProvider.delete(index);
                                    Navigator.pop(context);
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(
                                            content:
                                                Text("Data Berhasil Dihapus")));
                                  },
                                  child: const Text("Yes")),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text("No"))
                            ],
                          ),
                        ),
                      );
                    }),
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.primaries[Random().nextInt(
                        Colors.primaries.length,
                      )],
                      borderRadius: const BorderRadius.all(Radius.circular(5))),
                  child: Center(
                      child: Text(
                    contactsManager.contacts[index].name[0],
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  )),
                ),
                title: Text(contactsManager.contacts[index].name),
                subtitle: Text(contactsManager.contacts[index].phone),
              );
            },
            itemCount: contactManagerProvider.contacts.length,
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                height: 0,
                child: Divider(
                  indent: 75,
                ),
              );
            },
          ),
        ));
  }
}
