import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/helpers/location_helper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_google_place_cubit.freezed.dart';
part 'search_google_place_state.dart';

class SearchGooglePlaceCubit extends Cubit<SearchGooglePlaceState> {
  Timer? _debounce;
  final LocationHelper locationHelper;
  SearchGooglePlaceCubit({required this.locationHelper})
      : super(const SearchGooglePlaceState.initial());

  void searchGooglePlaceApi(String query) async {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () async {
      // do something with query
      if (query.length < 3) return;
      emit(const GoogleSearchLoading());
      final List<dynamic> places = await locationHelper.getAddress(query);
      debugPrint(places.toString());
      List<SuggestedGoogleAddressModel> suggestionAddresse = [];
      for (var addr in places) {
        suggestionAddresse.add(
            SuggestedGoogleAddressModel(addr['description'], addr['place_id']));
      }
      emit(GoogleSearchLoaded(suggestedAddresses: suggestionAddresse));
    });
  }

  void resetState() {
    emit(const SearchGooglePlaceInitial());
  }

  // void getAddressFromLatLng(Position position) async {
  //   final String? address = await locationHelper.getAddressFromLatLng(Position(
  //     longitude: position.latitude,
  //     latitude: position.longitude,
  //     accuracy: 0,
  //     altitude: 0,
  //     heading: 0,
  //     speed: 0,
  //     speedAccuracy: 0,
  //     timestamp: null,
  //   ));
  //   if (address != null) {
  //     // GoogleSearchLoaded(suggestedAddresses: [address]);
  //   } else {
  //     const GoogleSearchFailure("Cannot locate the address");
  //   }
  // }
}
