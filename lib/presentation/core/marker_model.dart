class MarkerData {
  final String id;
  final String name;
  final double latitude;
  final double longitude;
  final int iconIndex;

  MarkerData({
    required this.id,
    required this.name,
    required this.latitude,
    required this.longitude,
    required this.iconIndex,
  });

  factory MarkerData.fromJson(Map<String, dynamic> json) {
    return MarkerData(
      id: json['id'],
      name: json['name'],
      latitude: json['latitude'],
      longitude: json['longitude'],
      iconIndex: json['iconIndex'],
    );
  }
}
