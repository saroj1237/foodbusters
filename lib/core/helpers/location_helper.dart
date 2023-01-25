import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodbusters/core/network_services/interceptor.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

String key = 'AIzaSyDBb4GeiYnJtCj3KL9rLSpHRu8_jWUeD3k';

class LocationHelper {
  final DioClient dioClient;
  LocationHelper(this.dioClient);
  Future<Position> determinePosition() async {
    try {
      bool? serviceEnabled;
      LocationPermission permission;
      // permission = await Geolocator.requestPermission();
      // Test if location services are enabled.
      serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        // Location services are not enabled don't continue
        // accessing the position and request users of the
        // App to enable the location services.
        permission = await Geolocator.requestPermission();
      }

      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          // Permissions are denied, next time you could try
          // requesting permissions again (this is also where
          // Android's shouldShowRequestPermissionRationale
          // returned true. According to Android guidelines
          // your App should show an explanatory UI now.
          return Future.error('Location permissions are denied');
        }
      }

      if (permission == LocationPermission.deniedForever) {
        // Permissions are denied forever, handle appropriately.
        return Future.error(
            'Location permissions are permanently denied, we cannot request permissions.');
      }

      // When we reach here, permissions are granted and we can
      // continue accessing the position of the device.
      final currentPosition = await Geolocator.getCurrentPosition();
      final address = await getAddressFromLatLng(currentPosition);
      debugPrint(address);
      return currentPosition;
    } catch (e) {
      rethrow;
    }
  }

  Future<String?> getAddressFromLatLng(Position position) async {
    try {
      List<Placemark> placemarks =
          await placemarkFromCoordinates(position.latitude, position.longitude);
      debugPrint(placemarks.toString());
      Placemark place = placemarks[0];
      final String address =
          '${place.street}, ${place.thoroughfare}, ${place.administrativeArea}, ${place.country}';
      return address;
    } catch (e) {
      if (e is PlatformException) {
        debugPrint(e.details);
        return e.details;
      }
      debugPrint(e.toString());
    }
    return null;
  }

  /// [GET] the place id from google map api
  Future<String> getPlaceId(String input) async {
    final url =
        'https://maps.googleapis.com/maps/api/place/findplacefromtext/json?input=$input&inputtype=textquery&key=$key';

    final response = await dioClient.get(url);
    var placeId = response['candidates'][0]['place_id'] as String;
    return placeId;
  }

  /// [GET] the place list from google map api
  Future<List<dynamic>> placeAutoComplete(String input) async {
    final url =
        'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$input&type=geocode&components=country:np&key=$key';

    final response = await dioClient.get(url);
    final predictions = response['predictions'];

    return predictions;
  }

  Future<List<dynamic>> getAddress(String query) async {
    // final placeId = await getPlaceId(query);
    // final url =
    //     'https://maps.googleapis.com/maps/api/place/details/json?place_id=$placeId&key=$key';
    // final response = await dioClient.get(url);
    // final results = response['result'] as Map<String, dynamic>;
    // print(results);
    // return results;
    final results = await placeAutoComplete(query);
    debugPrint(results.toString());
    return results;
  }

  Future<dynamic> getPlaceInfoFromPlaceId(String placeId) async {
    final url =
        'https://maps.googleapis.com/maps/api/place/details/json?place_id=$placeId&key=$key';
    final response = await dioClient.get(url);
    final results = response['result'] as Map<String, dynamic>;

    debugPrint(results.toString());

    return results;
  }
}

class ChangeLocationHelper {
  const ChangeLocationHelper();

  Future<void> myAsyncMethod(
    BuildContext context,
    Completer<GoogleMapController> controller,
    CameraPosition newCameraPosition,
    VoidCallback onSuccess,
  ) async {
    final GoogleMapController controller1 = await controller.future;
    await controller1
        .animateCamera(CameraUpdate.newCameraPosition(newCameraPosition));
    onSuccess.call();
  }
}
