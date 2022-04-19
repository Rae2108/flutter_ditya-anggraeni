part of 'contact_bloc.dart';

abstract class ContactEvent extends Equatable {
  const ContactEvent();

  @override
  List<Object?> get props => [];
}

class AddContact extends ContactEvent {

  final Contact contact;

  const AddContact(this.contact);

  @override
  List<Object?> get props => [contact];

  @override
  String toString() => 'Added Contact -> $contact';
}

class RemoveContact extends ContactEvent {

  final Contact contact;

  const RemoveContact(this.contact);

  @override
  List<Object?> get props => [contact];

  @override
  String toString() => 'Remove Contact -> ${contact.name}';
}

class AddFavContact extends ContactEvent {

  final String name;

  const AddFavContact(this.name);

  @override
  List<Object?> get props => [name];

  @override
  String toString() => 'Added Favorite Contact -> $name';
}

class RemoveFavContact extends ContactEvent {

  final String name;

  const RemoveFavContact(this.name);

  @override
  List<Object?> get props => [name];

  @override
  String toString() => 'Remove Favorite Contact -> $name';
}