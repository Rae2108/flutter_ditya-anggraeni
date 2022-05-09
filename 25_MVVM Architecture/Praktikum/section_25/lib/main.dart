import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:section_25/task_1/screen/contact/contacts_view_model.dart';
import 'Task_1/screen/contact/contact_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
        create: (_) => ContactViewModel(), child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContactScreen(),
    );
  }
}
