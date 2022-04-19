import 'package:flutter/material.dart';

import '../../models/contact.dart';

class ItemContact extends StatelessWidget {
  final Contact contact;
  const ItemContact({Key? key, required this.contact})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(
          contact.name[0],
          style: const TextStyle(color: Colors.white),
        ),
      ),
      title: Text(contact.name),
      subtitle: Text(contact.noTelp),
    );
  }
}
