import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/contact_bloc.dart';
import '../new_contact/new_contact_screen.dart';
import '../utils/app_route.dart';
import 'components/item_contact.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ContactBloc, ListContact>(
        builder: (context, state) => Stack(
          children: [
            ListView.builder(
              itemCount: state.newListContact.length,
              itemBuilder: (context, index) {
                var contact = state.listContact[index];
                return ItemContact(contact: contact);
              },
            ),
            state.newListContact.isEmpty
                ? const Center(
                    child: Text('Tidak ada data'),
                  )
                : Container()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => AppRoute.to(const ContactPage(), const NewContactScreen()),
        tooltip: 'New Contact',
        child: const Icon(Icons.person_add),
      ),
    );
  }
}
