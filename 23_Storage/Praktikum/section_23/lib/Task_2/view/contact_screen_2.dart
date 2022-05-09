import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:section_23/Task_2/bloc/contact_manager_bloc.dart';
import 'package:section_23/Task_2/bloc/contact_manager_state.dart';
import 'package:section_23/Task_2/view/create_contacts_2.dart';

import '../../widget/custome_page_route.dart';

class ContactScreen2 extends StatelessWidget {
  const ContactScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final contactBloc = BlocProvider.of<ContactManagerBloc>(context);
    if (contactBloc.state.items.isEmpty) {
      contactBloc.add(SaveAdd());
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact Bloc"),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            Navigator.of(context)
                .push(CustomePageRoute(child: const CreateContacts2()));
          }),
      body: BlocBuilder<ContactManagerBloc, ContactManagerState>(
        builder: (context, state) {
          return ListView.separated(
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
                                    contactBloc.add(Delete(items: index));
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
                    state.items[index].name[0],
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  )),
                ),
                title: Text(state.items[index].name),
                subtitle: Text(state.items[index].phone),
              );
            },
            itemCount: state.items.length,
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                height: 0,
                child: Divider(
                  indent: 75,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
