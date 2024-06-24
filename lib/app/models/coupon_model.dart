///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class Coupon {
/*
{
  "title": "Flat 20% offer",
  "typeOfOffer": "Deal of the day",
  "validFor": "Dine-In",
  "validTill": "2024-06-30T16:48:11.702+00:00",
  "description": "Save upto $20 with this coupon",
  "termsAndConditions": [
    "Valid for dine-in only"
  ]
}
*/

  String title;
  String typeOfOffer;
  String validFor;
  String validTill;
  String description;
  List<String> termsAndConditions;
  String id;
  bool isActive;

  Coupon({
    required this.title,
    required this.typeOfOffer,
    required this.validFor,
    required this.validTill,
    required this.description,
    required this.termsAndConditions,
    required this.id,
    required this.isActive,
  });

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['title'] = title;
    data['typeOfOffer'] = typeOfOffer;
    data['validFor'] = validFor;
    data['validTill'] = validTill;
    data['description'] = description;
    if (termsAndConditions != null) {
      final v = termsAndConditions;
      final arr0 = [];
      v.forEach((v) {
        arr0.add(v);
      });
      data['termsAndConditions'] = arr0;
    };
    data['_id'] = id;
    data['isActive'] = isActive;
    return data;
  }

  factory Coupon.fromJson(Map<String, dynamic> json){
    final arr0 = <String>[];
    if (json['termsAndConditions'] != null) {
      final v = json['termsAndConditions'];
      v.forEach((v) {
        arr0.add(v.toString());
      });
    }
    return Coupon(
        title: json['title']?.toString() ?? "Default Title",
        typeOfOffer: json['typeOfOffer']?.toString() ?? "Default type of offer",
        validFor: json['validFor']?.toString() ?? 'Default valid for date',
        validTill: json['validTill']?.toString() ?? 'Default valid till date',
        description: json['description']?.toString() ?? 'Default description',
        id: json['_id'],
        isActive: json['isActive'],
        termsAndConditions: arr0);
  }
}
