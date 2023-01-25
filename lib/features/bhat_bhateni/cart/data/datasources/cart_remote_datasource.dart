import 'package:foodbusters/core/network_services/api_url.dart';
import 'package:foodbusters/core/network_services/interceptor.dart';
import 'package:foodbusters/features/bhat_bhateni/cart/domain/entities/cart_entity.dart';

abstract class CartRemoteDatasource {
  Future<bool> addToCart(AddToCartReq req);
  Future<CartResponse> getCart();
  Future<bool> deleteCartItem(String id);
}

typedef AddedToCart = bool;

class CartRemoteDatasourceImpl implements CartRemoteDatasource {
  final DioClient _dioClient;
  CartRemoteDatasourceImpl(DioClient dioClient) : _dioClient = dioClient;
  @override
  Future<AddedToCart> addToCart(AddToCartReq req) async {
    try {
      final url = ApiUrl.addToCart.replaceAll("{pid}", req.productId);
      await _dioClient.post(url, data: {'quantity': req.quantity});
      return true;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<CartResponse> getCart() async {
    try {
      final data = await _dioClient.get(ApiUrl.getCartItems);

      var cartResponse = data['data'];
      // for (var item in l) {
      //   cartItems.add(CartItem.fromJson(item));
      // }
      if (cartResponse is Map<String, dynamic>) {
        return CartResponse.fromJson(cartResponse);
      } else {
        return const CartResponse(id: 'id');
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> deleteCartItem(String id) async {
    try {
      final url = ApiUrl.addToCart.replaceAll("{pid}", id);
      await _dioClient.delete(url);
      return true;
    } catch (e) {
      rethrow;
    }
  }
}
