class RestaurantDetails {
  String restaurantName;
  String restaurantLogo;
  String restaurantBanner;
  String location;
  int avgPrice;
  String description;
  List<String> features;
  List<Timing> timing;
  List<String> media;

  RestaurantDetails({
    required this.restaurantName,
    required this.restaurantLogo,
    required this.restaurantBanner,
    required this.location,
    required this.avgPrice,
    required this.description,
    required this.features,
    required this.timing,
    required this.media,
  });

  RestaurantDetails.fromJson(Map<String, dynamic> json)
      : restaurantName = json['restaurantName'],
        restaurantLogo = json['restaurantLogo'],
        restaurantBanner = json['restaurantBanner'],
        location = json['location'],
        avgPrice = json['avgPrice'],
        description = json['description'],
        features =
            json['features'] != null ? List<String>.from(json['features']) : [],
        timing = json['timing'] != null
            ? (json['timing'] as List)
                .map((timingJson) => Timing.fromJson(timingJson))
                .toList()
            : [],
        media = json['media'] != null ? List<String>.from(json['media']) : [];

  Map<String, dynamic> toJson() => {
        'restaurantName': restaurantName,
        'restaurantLogo': restaurantLogo,
        'restaurantBanner': restaurantBanner,
        'location': location,
        'avgPrice': avgPrice,
        'description': description,
        'features': features,
        'timing': timing.map((timing) => timing.toJson()).toList(),
        'media': media,
      };

  RestaurantDetails copyWith({
    required String restaurantName,
    required String restaurantLogo,
    required String restaurantBanner,
    required String location,
    required int avgPrice,
    required String description,
    required List<String> features,
    required List<Timing> timing,
    required List<String> media,
  }) =>
      RestaurantDetails(
          restaurantName: restaurantName,
          restaurantLogo: restaurantLogo,
          restaurantBanner: restaurantBanner,
          location: location,
          avgPrice: avgPrice,
          description: description,
          features: features,
          timing: timing,
          media: media);
}

class Timing {
  String day;
  bool isActive;

  Timing({
    required this.day,
    required this.isActive,
  });

  Timing.fromJson(Map<String, dynamic> json)
      : day = json['day'],
        isActive = json['isActive'];

  Map<String, dynamic> toJson() => {
        'day': day,
        'isActive': isActive,
      };
}
