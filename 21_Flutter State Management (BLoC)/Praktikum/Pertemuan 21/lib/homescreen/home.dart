import 'package:bloc21/bloc/bloc.dart';
import 'package:bloc21/utils/app_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../new_contact/new_contact_screen.dart';
import 'components/items.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
      ),
      body: BlocBuilder<ClassBloc, ListContact>(
        builder: (context, state) => Stack(
          children: [
            ListView.builder(
              itemCount: state.newListContact.length,
              itemBuilder: (context, index) {
                var contact = state.listContact[index];
                return Items(contact: contact);
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
        onPressed: () =>
            AppRoute.to(const MyHomePage(), const NewContactScreen()),
        tooltip: 'New Contact',
        child: const Icon(Icons.person_add),
      ),
    );
  }
}
