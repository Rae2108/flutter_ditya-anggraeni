import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../new_contact/new_contact_screen.dart';
import '../utils/app_route.dart';
import '../utils/contact_manager.dart';
import 'components/item_contact.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final manager = Provider.of<ContactManager>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
        actions: [
          IconButton(
              onPressed: () =>
                  AppRoute.withNameTo(AppRoute.create, arguments: manager),
              icon: const Icon(Icons.person_add))
        ],
      ),
      body: Consumer<ContactManager>(
        builder: (context, manager, child) => Stack(
          children: [
            ListView.builder(
              itemCount: manager.listContact.length,
              itemBuilder: (context, index) {
                var contact = manager.listContact[index];
                return ItemContact(contact: contact);
              },
            ),
            manager.listContact.isEmpty
                ? const Center(
                    child: Text('Tidak ada data'),
                  )
                : Container()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AppRoute.to(NewContactScreen(
            manager: manager,
          ));
        },
        tooltip: 'New Contact',
        child: const Icon(Icons.person_add),
      ),
    );
  }
}
