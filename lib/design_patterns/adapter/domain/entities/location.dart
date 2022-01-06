class MyLocation {
  final double latitude;
  final double longitude;

  MyLocation({required this.latitude, required this.longitude});

  factory MyLocation.fromMap(Map<String, dynamic> data) {
    return MyLocation(latitude: data['latitude'], longitude: data['longitude']);
  }
}
