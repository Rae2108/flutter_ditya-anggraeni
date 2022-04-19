import 'package:flutter_bloc/flutter_bloc.dart';

import 'contact_bloc.dart';

class ContactFavoriteBloc extends Bloc<ContactEvent, ListFavorite> {
  final List<String> _listFav = [];

  ContactFavoriteBloc() : super(ListFavorite()) {
    on<AddFavContact>((event, emit) {
      _listFav.add(event.name);
      emit(ListFavorite(listFavorite: _listFav));
    });
    on<RemoveFavContact>((event, emit) {
      if (_listFav.contains(event.name)) {
        _listFav.remove(event.name);
        emit(ListFavorite(listFavorite: _listFav));
      }
    });
  }
}