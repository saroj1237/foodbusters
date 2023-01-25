import 'dart:math' as math;

/// calculate the shortest distance betweent two geo-coordinates
num calculateDistance(List<num> point1, List<num> point2) {
  const pi = math.pi;
  const earthRadius = 6371000; // 6371 km

  // const point1 = [27.7172, 85.3240]; // ktm
  // const point2 = [40.7128, 74.0060]; // new york

  final lat1 = point1[0] * pi / 180; // in radian
  final lat2 = point2[0] * pi / 180; // in radian
  final deltaLat = lat1 - lat2;

  final lng1 = point1[1] * pi / 180; // in radian
  final lng2 = point2[1] * pi / 180; // in radian
  final deltaLng = lng1 - lng2;

  final a = math.pow(math.sin(deltaLat / 2), 2) +
      math.cos(lat1) * math.cos(lat2) * math.pow(math.sin(deltaLng / 2), 2);
  final c = 2 * math.asin(math.sqrt(a));
  final distance = c * earthRadius;
  final distanceInKm = distance / 1000; // km
  return distanceInKm;
}
