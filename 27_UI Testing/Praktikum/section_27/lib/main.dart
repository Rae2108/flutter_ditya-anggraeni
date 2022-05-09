import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:section_27/screen/contact/contact_screen.dart';
import 'package:section_27/screen/contact/contacts_view_model.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
        create: ((context) => ContactViewModel()),
        child: const ContactScreen(),
      ),
    );
  }
}
