import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/features/bag/presentation/pages/bag_page.dart';
import 'package:foodbusters/features/bhat_bhateni/cart/presentation/pages/cart_page.dart';
import 'package:foodbusters/features/bhat_bhateni/order/presentation/pages/bb_orderlist_page.dart';
import 'package:foodbusters/features/bhat_bhateni/pages/bb_home_page.dart';
import 'package:foodbusters/features/home/presentation/pages/home_page.dart';
import 'package:foodbusters/features/order/presentation/pages/order_list_page.dart';
import 'package:foodbusters/features/profile/presentation/pages/profile_page.dart';

class BottomNavCubit extends Cubit<BottomNavState> {
  BottomNavCubit() : super(BottomNavState(const HomePage(), 0));

  changeBottomNavIndex(int index, BottomNavType type) {
    try {
      switch (type) {
        case BottomNavType.foodbusters:
          switch (index) {
            case 0:
              emit(BottomNavState(const HomePage(), 0));
              break;
            case 1:
              emit(BottomNavState(const BagPage(), 1));
              break;
            case 2:
              emit(BottomNavState(const OrderListPage(), 2));
              break;
            case 3:
              emit(BottomNavState(const ProfilePage(), 3));
              break;
          }
          break;
        case BottomNavType.bhatBhateni:
          switch (index) {
            case 0:
              emit(BottomNavState(const BBHomePage(), 0));
              break;
            case 1:
              emit(BottomNavState(const CartPage(), 1));
              break;
            case 2:
              emit(BottomNavState(const BBOrderListPage(), 2));
              break;
            case 3:
              emit(BottomNavState(const ProfilePage(), 3));
              break;
          }
          break;
        default:
          emit(state);
      }
    } catch (e) {
      emit(state);
    }
  }
}

class BottomNavState {
  final Widget screen;
  final int currentIndex;
  BottomNavState(this.screen, this.currentIndex);
}

enum BottomNavType { foodbusters, bhatBhateni }
