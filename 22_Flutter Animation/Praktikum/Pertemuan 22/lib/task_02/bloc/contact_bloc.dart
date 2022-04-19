import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'contact_event.dart';
part 'contact_state.dart';

class ContactBloc extends Bloc<ContactEvent, ListContact> {
  final List<Contact> _listItems = [];

  ContactBloc() : super(ListContact()) {
    on<AddContact>((event, emit) {
      _listItems.add(event.contact);
      emit(ListContact(listContact: _listItems));
    });
    on<RemoveContact>((event, emit) {
      _listItems.remove(event.contact);
      emit(ListContact(listContact: _listItems));
    });
  }
}
