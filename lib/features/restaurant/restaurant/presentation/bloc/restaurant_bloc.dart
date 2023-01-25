import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/features/restaurant/restaurant/domain/usecases/restaurant_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/entity.dart';

part 'restaurant_bloc.freezed.dart';
part 'restaurant_event.dart';
part 'restaurant_state.dart';

class RestaurantBloc extends Bloc<RestaurantEvent, RestaurantState> {
  final RestaurantUsecase usecase;
  List<Menu> resMenu = [];
  RestaurantBloc(this.usecase) : super(const RestaurantState.initial()) {
    // on<GetRestaurantList>((event, emit) async {
    //   emit(const GetRestaurantListLoading());
    //   final failureOrResponse = await usecase.call(event.id);
    //   failureOrResponse.fold((failure) {
    //     emit(const GetRestaurantListFailure());
    //   }, (list) {
    //     emit(GetRestaurantListSuccess(restaurantList: list));
    //   });
    // });

    on<GetRestaurantDetail>((event, emit) async {
      emit(const GetRestaurantListLoading());
      final failureOrResDetail =
          await usecase.getRestaurantDetail(event.restaurantId);
      await failureOrResDetail.fold((failure) {
        emit(const GetRestaurantListFailure());
      }, (resDetail) async {
        emit(GetRestaurantListSuccess(
            restaurantList: [], restaurantDetail: resDetail, menuList: []));
      });
    });

    // on<GetRestaurantDetail>((event, emit) async {
    //   final state = this.state;
    //   if (state is GetRestaurantListSuccess) {
    //     final successState = state;
    //     emit(const GetRestaurantListLoading());
    //     final failureOrResDetail =
    //         await usecase.getRestaurantDetail(event.restaurantId);
    //     await failureOrResDetail.fold((failure) {
    //       emit(state);
    //     }, (resDetail) async {
    //       final failureOrMenuList =
    //           await usecase.getRestaurantMenu(event.restaurantId);
    //       failureOrMenuList.fold((failure) {
    //         emit(state);
    //       }, (menuList) {
    //         emit(successState.copyWith(
    //           restaurantDetail: resDetail,
    //           menuList: menuList,
    //         ));
    //         resMenu = menuList;
    //       });
    //     });
    //   } else {
    //     emit(const GetRestaurantListLoading());
    //     final failureOrResDetail =
    //         await usecase.getRestaurantDetail(event.restaurantId);
    //     await failureOrResDetail.fold((failure) {
    //       emit(const GetRestaurantListFailure());
    //     }, (resDetail) async {
    //       final failureOrMenuList =
    //           await usecase.getRestaurantMenu(event.restaurantId);
    //       failureOrMenuList.fold((failure) {
    //         emit(const GetRestaurantListFailure());
    //       }, (menuList) {
    //         emit(GetRestaurantListSuccess(
    //             restaurantList: [],
    //             restaurantDetail: resDetail,
    //             menuList: menuList));
    //         resMenu = menuList;
    //       });
    //     });
    //   }
    // });

    // on<GetResMenuNxtPage>((event, emit) async {
    //   final state = this.state;
    //   if (state is GetRestaurantListSuccess) {
    //     final successState = state;

    //     final failureOrResDetail =
    //         await usecase.getRestaurantDetail(event.restaurantId);
    //     await failureOrResDetail.fold((failure) {
    //       emit(state);
    //     }, (resDetail) async {
    //       final failureOrMenuList =
    //           await usecase.getRestaurantMenu(event.restaurantId);
    //       failureOrMenuList.fold((failure) {
    //         emit(state);
    //       }, (menuList) {
    //         emit(successState.copyWith(
    //           restaurantDetail: resDetail,
    //           menuList: menuList,
    //         ));
    //         if (menuList.isNotEmpty) {
    //           resMenu = resMenu + menuList;
    //           emit(GetRestaurantListSuccess(
    //               restaurantList: [],
    //               restaurantDetail: resDetail,
    //               menuList: resMenu));
    //         } else {
    //           emit(RestaurantSearchReachedMax(true, resMenu));
    //         }
    //       });
    //     });
    //   } else {
    //     final failureOrResDetail =
    //         await usecase.getRestaurantDetail(event.restaurantId);
    //     await failureOrResDetail.fold((failure) {
    //       emit(const GetRestaurantListFailure());
    //     }, (resDetail) async {
    //       final failureOrMenuList =
    //           await usecase.getRestaurantMenu(event.restaurantId);
    //       failureOrMenuList.fold((failure) {
    //         emit(const GetRestaurantListFailure());
    //       }, (menuList) {
    //         if (menuList.isNotEmpty) {
    //           resMenu = resMenu + menuList;
    //           emit(GetRestaurantListSuccess(
    //               restaurantList: [],
    //               restaurantDetail: resDetail,
    //               menuList: resMenu));
    //         } else {
    //           emit(RestaurantSearchReachedMax(true, resMenu));
    //         }
    //       });
    //     });
    //   }
    // });
  }
}
