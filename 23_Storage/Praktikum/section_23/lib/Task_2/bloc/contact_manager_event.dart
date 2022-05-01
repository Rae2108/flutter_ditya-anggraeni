part of 'contact_manager_bloc.dart';

abstract class ContactManagerEvent extends Equatable {
  const ContactManagerEvent();

  @override
  List<Object> get props => [];
}

class SaveAdd extends ContactManagerEvent {
  @override
  List<Object> get props => [];
}

class Add extends ContactManagerEvent {
  final ContactsModel2 items;

  const Add({required this.items});

  @override
  List<Object> get props => [items];
}

class Delete extends ContactManagerEvent {
  final int items;

  const Delete({required this.items});

  @override
  List<Object> get props => [items];
}
