import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/error/network_exceptions.dart';
import 'package:foodbusters/features/banner/banner_repository.dart';
import 'package:foodbusters/features/banner/model/banner_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner_cubit.freezed.dart';
part 'banner_state.dart';

class BannerCubit extends Cubit<BannerState> {
  final BannerRepository repository;
  BannerCubit(this.repository) : super(const BannerState.initial());
  void getBanners() async {
    emit(const BannerLoading());
    final failureOrList = await repository.getBanners();
    failureOrList.fold((failure) {
      if (failure is NetworkFailure) {
        emit(BannerFailure(NetworkExceptions.getErrorMessage(failure.error)));
      }
    }, (banners) {
      emit(BannerLoaded(banners));
    });
  }
}
