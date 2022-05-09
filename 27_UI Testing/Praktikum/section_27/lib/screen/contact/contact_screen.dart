import 'dart:math';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:section_27/screen/contact/add_contact.dart';
import 'package:section_27/widget/custome_route/custome_page_route.dart';

import 'contacts_view_model.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  void initState() {
    Future.microtask(() => context.read<ContactViewModel>().getAllContacts());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final contactView = Provider.of<ContactViewModel>(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text("Contacts"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context)
                .push(CustomePageRoute(child: const AddContact()));
          },
          child: const Icon(Icons.add),
        ),
        body: FutureBuilder(
            key: const ValueKey("future get contacts"),
            future: contactView.getAllContacts(),
            builder: (context, snapshot) {
              final isLoading = snapshot.data == ContactViewState.loading;
              final isError = snapshot.data == ContactViewState.error;

              if (isLoading) {
                return const Center(
                    child: CircularProgressIndicator(
                        key: ValueKey("CircularIndicator")));
              } else if (isError) {
                return const Center(child: Text("Gagal Mendapatkan Data"));
              } else {
                return ListView.separated(
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      key: const ValueKey("ListTile"),
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
