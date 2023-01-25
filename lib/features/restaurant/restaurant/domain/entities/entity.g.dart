// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Restaurant _$$_RestaurantFromJson(Map<String, dynamic> json) =>
    _$_Restaurant(
      id: json['id'] as String,
      name: json['restaurant_name'] as String,
      images: json['images'] as String?,
      address: json['address'] as String?,
      lat: json['lat'] as num?,
      lng: json['lng'] as num?,
      isFavorite: json['isFavorite'] as bool? ?? false,
      openingTime: json['opening_time'] as String?,
      closingTime: json['closing_time'] as String?,
    );

Map<String, dynamic> _$$_RestaurantToJson(_$_Restaurant instance) =>
    <String, dynamic>{
      'id': instance.id,
      'restaurant_name': instance.name,
      'images': instance.images,
      'address': instance.address,
      'lat': instance.lat,
      'lng': instance.lng,
      'isFavorite': instance.isFavorite,
      'opening_time': instance.openingTime,
      'closing_time': instance.closingTime,
    };

_$_RestaurantDetail _$$_RestaurantDetailFromJson(Map<String, dynamic> json) =>
    _$_RestaurantDetail(
      id: json['id'] as String,
      restaurantName: json['restaurant_name'] as String,
      description: json['description'] as String?,
      address: json['address'] as String?,
      images: json['images'] as String?,
      contact: json['contact'] as String?,
      openingTime: json['opening_time'] as String?,
      closingTime: json['closing_time'] as String?,
      lat: json['lat'] as num?,
      lng: json['lng'] as num?,
      rating: json['rating'] as num?,
      isFavorite: json['isFavorite'] as bool? ?? false,
      reviews: json['reviews'] as List<dynamic>? ?? const [],
    );

Map<String, dynamic> _$$_RestaurantDetailToJson(_$_RestaurantDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'restaurant_name': instance.restaurantName,
      'description': instance.description,
      'address': instance.address,
      'images': instance.images,
      'contact': instance.contact,
      'opening_time': instance.openingTime,
      'closing_time': instance.closingTime,
      'lat': instance.lat,
      'lng': instance.lng,
      'rating': instance.rating,
      'isFavorite': instance.isFavorite,
      'reviews': instance.reviews,
    };

_$_Menu _$$_MenuFromJson(Map<String, dynamic> json) => _$_Menu(
      id: json['id'] as String,
      title: json['title'] as String,
      foods: (json['foods'] as List<dynamic>?)
              ?.map((e) => Food.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_MenuToJson(_$_Menu instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'foods': instance.foods.map((e) => e.toJson()).toList(),
    };

_$_Food _$$_FoodFromJson(Map<String, dynamic> json) => _$_Food(
      id: json['id'] as String,
      restaurantId: json['restaurant_id'] as String?,
      restaurantName: json['restaurant'] as String?,
      name: json['name'] as String?,
      detail: json['detail'] as String?,
      price: json['price'] as num?,
      discount: json['discount'] as num?,
      discountedPrice: json['discountedPrice'] as num?,
      foodImage: (json['foodImage'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      isVeg: json['isVeg'] as bool?,
      offer: json['offer'] as bool,
      offerName: json['offer_name'] as String?,
    );

Map<String, dynamic> _$$_FoodToJson(_$_Food instance) => <String, dynamic>{
      'id': instance.id,
      'restaurant_id': instance.restaurantId,
      'restaurant': instance.restaurantName,
      'name': instance.name,
      'detail': instance.detail,
      'price': instance.price,
      'discount': instance.discount,
      'discountedPrice': instance.discountedPrice,
      'foodImage': instance.foodImage,
      'isVeg': instance.isVeg,
      'offer': instance.offer,
      'offer_name': instance.offerName,
    };
