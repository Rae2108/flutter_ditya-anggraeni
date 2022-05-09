import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:section_23/Task_2/bloc/contact_manager_bloc.dart';

import 'Task_1/view/view_model/contacts_manager.dart';
import 'Task_1/view/contact_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ContactManager(),
      child: BlocProvider(
        create: (_) => ContactManagerBloc(),
        child: const MaterialApp(
            debugShowCheckedModeBanner: false, home: ContactScreen()),
      ),
    );
  }
}
