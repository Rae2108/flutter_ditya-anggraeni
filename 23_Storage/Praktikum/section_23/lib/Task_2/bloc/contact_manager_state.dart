import 'package:equatable/equatable.dart';
import 'package:section_23/Task_2/model/contacts_model.dart';

class ContactManagerState extends Equatable {
  final List<ContactsModel2> items;

  const ContactManagerState({required this.items});
  @override
  List<Object> get props => [items];
}
