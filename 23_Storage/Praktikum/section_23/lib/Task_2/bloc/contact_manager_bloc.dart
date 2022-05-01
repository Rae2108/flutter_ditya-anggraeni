import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:section_23/Task_2/bloc/contact_manager_state.dart';
import 'package:section_23/Task_2/model/contacts_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'contact_manager_event.dart';

class ContactManagerBloc
    extends Bloc<ContactManagerEvent, ContactManagerState> {
  ContactManagerBloc() : super(const ContactManagerState(items: [])) {
    on<SaveAdd>(_saveAdd);
    on<Add>(_onAdd);
    on<Delete>(_onDelete);
  }
  late SharedPreferences _prefs;
  SharedPreferences get prefs => _prefs;

  void _saveAdd(event, emit) async {
    List<ContactsModel2> _contacts = [];
    _prefs = await SharedPreferences.getInstance();
    if (_prefs.getStringList('name') != null) {
      for (var i = 0; i < _prefs.getStringList('name')!.length; i++) {
        _contacts.add(ContactsModel2(
            name: _prefs.getStringList('name')![i],
            phone: _prefs.getStringList('phone')![i]));
      }
      _contacts
          .sort((a, b) => a.name.toLowerCase().compareTo(b.name.toLowerCase()));
      emit(ContactManagerState(items: _contacts));
    }
  }

  void _onAdd(Add event, emit) {
    emit(ContactManagerState(
        items: [
      ...state.items,
      event.items
    ]..sort((a, b) => a.name.toLowerCase().compareTo(b.name.toLowerCase()))));
    _prefs.setStringList('name', state.items.map((e) => e.name).toList());
    _prefs.setStringList('phone', state.items.map((e) => e.phone).toList());
  }

  void _onDelete(Delete event, emit) {
    emit(ContactManagerState(items: [...state.items]..removeAt(event.items)));
    _prefs.setStringList('name', state.items.map((e) => e.name).toList());
    _prefs.setStringList('phone', state.items.map((e) => e.phone).toList());
  }
}
