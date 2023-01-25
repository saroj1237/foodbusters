import 'package:bloc/bloc.dart';
import 'package:foodbusters/features/restaurant/restaurant/domain/entities/entity.dart';
import 'package:foodbusters/features/restaurant/restaurant/domain/usecases/restaurant_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurant_menu_event.dart';
part 'restaurant_menu_state.dart';
part 'restaurant_menu_bloc.freezed.dart';

class RestaurantMenuBloc
    extends Bloc<RestaurantMenuEvent, RestaurantMenuState> {
  final RestaurantUsecase usecase;
  List<Menu> resMenu = [];
  RestaurantMenuBloc(this.usecase) : super(Initial()) {
    on<GetRestaurantMenu>((event, emit) async {
      emit(GetRestaurantMenuLoading());
      final failureOrMenuList = await usecase.getRestaurantMenu(event.id);
      failureOrMenuList.fold((failure) {
        emit(GetRestaurantMenuError(failure.toString()));
      }, (menuList) {
        emit(GetRestaurantMenuLoaded(menuList));
        resMenu = menuList;
      });
    });
    on<GetRestaurantMenuNextPage>(((event, emit) async {
      final failureOrMenuList = await usecase.getRestaurantMenu(event.id);
      failureOrMenuList.fold((failure) {
        emit(GetRestaurantMenuError(failure.toString()));
      }, (menuList) {
        if (menuList.isNotEmpty) {
          resMenu = resMenu + menuList;
          emit(GetRestaurantMenuLoaded(resMenu));
        } else {
          emit(RestaurantMenuState.getRestaurantMenuReachedMax(true, resMenu));
        }
      });
    }));
  }
}
