import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/error/network_exceptions.dart';
import 'package:foodbusters/core/usecases/base_usecase.dart';
import 'package:foodbusters/features/bhat_bhateni/cart/domain/entities/cart_entity.dart';
import 'package:foodbusters/features/bhat_bhateni/cart/domain/usecases/add_to_cart_usecase.dart';
import 'package:foodbusters/features/bhat_bhateni/cart/domain/usecases/delete_cart_item_usecase.dart';
import 'package:foodbusters/features/bhat_bhateni/cart/domain/usecases/get_cart_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_bloc.freezed.dart';
part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final AddToCartUsecase addToCartUsecase;
  final GetCartUsecase getCartUsecase;
  final DeleteCartItemUsecase deleteCartItemUsecase;
  CartBloc(
      {required this.addToCartUsecase,
      required this.getCartUsecase,
      required this.deleteCartItemUsecase})
      : super(const Initial()) {
    on<AddToCart>(_onAddToCart);
    on<GetCart>(_onGetCart);
    on<UpdateCart>(_onUpdateCart);
    on<DeleteCartItem>(_onDeleteCartItem);
  }
  _onAddToCart(AddToCart event, Emitter<CartState> emit) async {
    emit(const CartLoading());
    final failureOrSuccess = await addToCartUsecase(event.req);
    failureOrSuccess.fold((failure) {
      if (failure is NetworkFailure) {
        emit(CartError(NetworkExceptions.getErrorMessage(failure.error)));
      }
    }, (success) {
      emit(const AddToCartSuccess());
    });
  }

  _onGetCart(GetCart event, Emitter<CartState> emit) async {
    if (event.hideLoading != true) {
      emit(const CartLoading());
    }
    final failureOrList = await getCartUsecase(NoParams());
    failureOrList.fold((failure) {
      if (failure is NetworkFailure) {
        emit(CartError(NetworkExceptions.getErrorMessage(failure.error)));
      }
    }, (response) {
      emit(GetCartSuccess(cartResponse: response));
    });
  }

  _onUpdateCart(UpdateCart event, Emitter<CartState> emit) async {
    final state = this.state;

    if (state is GetCartSuccess) {
      final data = state.cartResponse;
      // emit(const CartLoading());
      final failureOrSuccess = await addToCartUsecase(event.req);
      failureOrSuccess.fold((failure) {
        if (failure is NetworkFailure) {
          emit(CartError(NetworkExceptions.getErrorMessage(failure.error)));
          emit(GetCartSuccess(cartResponse: data));
        }
      }, (success) {
        // emit(const AddToCartSuccess());
        add(const GetCart(hideLoading: true));
      });
    }
  }

  _onDeleteCartItem(DeleteCartItem event, Emitter<CartState> emit) async {
    final failureOrSuccess = await deleteCartItemUsecase(event.cartItem.id);
    failureOrSuccess.fold((l) {
      emit(state);
    }, (r) {
      add(const GetCart(hideLoading: true));
    });
  }
}
