import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/network_services/api_url.dart';

part 'offer_slider_cubit.freezed.dart';
part 'offer_slider_state.dart';

class OfferSliderCubit extends Cubit<OfferSliderState> {
  final Dio dio;
  OfferSliderCubit(this.dio) : super(const OfferSliderState.initial());
  void getOffers() async {
    emit(const OfferLoading());
    try {
      const url = "${ApiUrl.baseUrl}/restaurant/offer/image";
      final response = await dio.get(url);
      Iterable l = response.data['data'];
      List<String> offers = [];

      for (var image in l) {
        offers.add(image);
      }
      emit(OfferLoaded(offers));
    } catch (e) {
      emit(const OfferError());
    }
  }
}
