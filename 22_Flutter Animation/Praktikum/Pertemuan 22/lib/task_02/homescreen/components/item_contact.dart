import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/contact_bloc.dart';
import '../../bloc/contact_favorite_bloc.dart';

class ItemContact extends StatefulWidget {
  final Contact contact;
  const ItemContact({Key? key, required this.contact}) : super(key: key);

  @override
  State<ItemContact> createState() => _ItemContactState();
}

class _ItemContactState extends State<ItemContact> {
  @override
  Widget build(BuildContext context) {
    var contact = widget.contact;
    return BlocBuilder<ContactFavoriteBloc, ListFavorite>(
      builder: (context, state) {
        return BlocConsumer<ContactFavoriteBloc, ListFavorite>(
          listener: (context, state) {},
          builder: (context, state) {
            var isFavorite = state.listFavorite.contains(contact.name);
            return ListTile(
              leading: CircleAvatar(
                child: Text(
                  contact.name[0],
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              title: Text(contact.name),
              trailing: IconButton(
                  onPressed: () => _favorite(state.listFavorite, contact),
                  icon: Icon(
                    isFavorite ? Icons.star : Icons.star_border,
                    color: isFavorite ? Colors.amber : null,
                  )),
              subtitle: Text(contact.noTelp),
              onTap: () => _showDialogDelete(context, contact),
            );
          },
        );
      },
    );
  }

  void _favorite(List<String> list, Contact contact) {
    var isFavorite = list.contains(contact.name);
    context.read<ContactFavoriteBloc>().add(isFavorite
        ? RemoveFavContact(contact.name)
        : AddFavContact(contact.name));
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: isFavorite ? Colors.red : Colors.teal,
      content:
          Text(isFavorite ? 'Removed from favorite.' : 'Added to favorite.'),
      duration: const Duration(seconds: 1),
    ));
  }

  void _showDialogDelete(BuildContext context, Contact contact) => showDialog(
      context: context,
      builder: (context) => AlertDialog(
            title: const Text('Delete Contact'),
            content: Text('Delete contact "${contact.name}"?'),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancel')),
              TextButton(
                  onPressed: () => _deleteContact(context, contact),
                  child: const Text('Yes')),
            ],
          ));

  void _deleteContact(BuildContext context, Contact contact) {
    context.read<ContactFavoriteBloc>().add(RemoveFavContact(contact.name));
    context.read<ContactBloc>().add(RemoveContact(contact));
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: Colors.red,
      content: Text('Deleted Contact ${contact.name}'),
      duration: const Duration(seconds: 1),
    ));
    Navigator.pop(context);
  }
}
