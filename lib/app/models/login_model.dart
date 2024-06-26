///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class LoginModelUserTiming {
/*
{
  "day": "Monday",
  "startTime": "06:00 AM",
  "closeTime": "04:00 PM",
  "isActive": true,
  "_id": "667aa7f5d3ca02751fdb3fed"
}
*/

  String? day;
  String? startTime;
  String? closeTime;
  bool? isActive;
  String? Id;

  LoginModelUserTiming({
    this.day,
    this.startTime,
    this.closeTime,
    this.isActive,
    this.Id,
  });
  LoginModelUserTiming.fromJson(Map<String, dynamic> json) {
    day = json['day']?.toString();
    startTime = json['startTime']?.toString();
    closeTime = json['closeTime']?.toString();
    isActive = json['isActive'];
    Id = json['_id']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['day'] = day;
    data['startTime'] = startTime;
    data['closeTime'] = closeTime;
    data['isActive'] = isActive;
    data['_id'] = Id;
    return data;
  }
}

class LoginModelUser {
/*
{
  "_id": "66728075a065bac72ace0f09",
  "name": "Unknown",
  "email": "kapilprithviraj99@gmail.com",
  "phoneNumber": "+11111111111",
  "age": 0,
  "address": "",
  "city": "",
  "restaurantName": "Domino's",
  "restaurantLogo": "https://foodsauciety.s3.amazonaws.com/foodsauciety-gallery-1719313306544IMG_20240625_163116.jpg",
  "restaurantBanner": "https://foodsauciety.s3.amazonaws.com/foodsauciety-gallery-1719313307826IMG_20240625_163116.jpg",
  "location": "Gujarat, India",
  "avgPrice": 1000,
  "description": "restaurant description",
  "features": [
    "Dine-In"
  ],
  "media": [
    "https://foodsauciety.s3.amazonaws.com/foodsauciety-gallery-1719314420811Screenshot_2024-01-23-13-26-06-942_com.example.student_app.jpg"
  ],
  "role": "vendor",
  "firebaseUid": "S1mykL9xnFZm1oKEBFJnE4MNjif2",
  "firebaseSignInProvider": "password",
  "isActive": true,
  "timing": [
    {
      "day": "Monday",
      "startTime": "06:00 AM",
      "closeTime": "04:00 PM",
      "isActive": true,
      "_id": "667aa7f5d3ca02751fdb3fed"
    }
  ],
  "createdAt": "2024-06-19T06:53:41.908Z",
  "updatedAt": "2024-06-25T11:20:21.603Z",
  "isNewUser": false,
  "loyaltyCardCount": 0
}
*/

  String? Id;
  String? name;
  String? email;
  String? phoneNumber;
  int? age;
  String? address;
  String? city;
  String? restaurantName;
  String? restaurantLogo;
  String? restaurantBanner;
  String? location;
  int? avgPrice;
  String? description;
  List<String?>? features;
  List<String?>? media;
  String? role;
  String? firebaseUid;
  String? firebaseSignInProvider;
  bool? isActive;
  List<LoginModelUserTiming?>? timing;
  String? createdAt;
  String? updatedAt;
  bool? isNewUser;
  int? loyaltyCardCount;

  LoginModelUser({
    this.Id,
    this.name,
    this.email,
    this.phoneNumber,
    this.age,
    this.address,
    this.city,
    this.restaurantName,
    this.restaurantLogo,
    this.restaurantBanner,
    this.location,
    this.avgPrice,
    this.description,
    this.features,
    this.media,
    this.role,
    this.firebaseUid,
    this.firebaseSignInProvider,
    this.isActive,
    this.timing,
    this.createdAt,
    this.updatedAt,
    this.isNewUser,
    this.loyaltyCardCount,
  });
  LoginModelUser.fromJson(Map<String, dynamic> json) {
    Id = json['_id']?.toString();
    name = json['name']?.toString();
    email = json['email']?.toString();
    phoneNumber = json['phoneNumber']?.toString();
    age = json['age']?.toInt();
    address = json['address']?.toString();
    city = json['city']?.toString();
    restaurantName = json['restaurantName']?.toString();
    restaurantLogo = json['restaurantLogo']?.toString();
    restaurantBanner = json['restaurantBanner']?.toString();
    location = json['location']?.toString();
    avgPrice = json['avgPrice']?.toInt();
    description = json['description']?.toString();
    if (json['features'] != null) {
      final v = json['features'];
      final arr0 = <String>[];
      v.forEach((v) {
        arr0.add(v.toString());
      });
      features = arr0;
    }
    if (json['media'] != null) {
      final v = json['media'];
      final arr0 = <String>[];
      v.forEach((v) {
        arr0.add(v.toString());
      });
      media = arr0;
    }
    role = json['role']?.toString();
    firebaseUid = json['firebaseUid']?.toString();
    firebaseSignInProvider = json['firebaseSignInProvider']?.toString();
    isActive = json['isActive'];
    if (json['timing'] != null) {
      final v = json['timing'];
      final arr0 = <LoginModelUserTiming>[];
      v.forEach((v) {
        arr0.add(LoginModelUserTiming.fromJson(v));
      });
      timing = arr0;
    }
    createdAt = json['createdAt']?.toString();
    updatedAt = json['updatedAt']?.toString();
    isNewUser = json['isNewUser'];
    loyaltyCardCount = json['loyaltyCardCount']?.toInt();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['_id'] = Id;
    data['name'] = name;
    data['email'] = email;
    data['phoneNumber'] = phoneNumber;
    data['age'] = age;
    data['address'] = address;
    data['city'] = city;
    data['restaurantName'] = restaurantName;
    data['restaurantLogo'] = restaurantLogo;
    data['restaurantBanner'] = restaurantBanner;
    data['location'] = location;
    data['avgPrice'] = avgPrice;
    data['description'] = description;
    if (features != null) {
      final v = features;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v);
      });
      data['features'] = arr0;
    }
    if (media != null) {
      final v = media;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v);
      });
      data['media'] = arr0;
    }
    data['role'] = role;
    data['firebaseUid'] = firebaseUid;
    data['firebaseSignInProvider'] = firebaseSignInProvider;
    data['isActive'] = isActive;
    if (timing != null) {
      final v = timing;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data['timing'] = arr0;
    }
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['isNewUser'] = isNewUser;
    data['loyaltyCardCount'] = loyaltyCardCount;
    return data;
  }
}

class LoginModel {
/*
{
  "status": true,
  "message": "Vendor onboarded.",
  "user": {
    "_id": "66728075a065bac72ace0f09",
    "name": "Unknown",
    "email": "kapilprithviraj99@gmail.com",
    "phoneNumber": "+11111111111",
    "age": 0,
    "address": "",
    "city": "",
    "restaurantName": "Domino's",
    "restaurantLogo": "https://foodsauciety.s3.amazonaws.com/foodsauciety-gallery-1719313306544IMG_20240625_163116.jpg",
    "restaurantBanner": "https://foodsauciety.s3.amazonaws.com/foodsauciety-gallery-1719313307826IMG_20240625_163116.jpg",
    "location": "Gujarat, India",
    "avgPrice": 1000,
    "description": "restaurant description",
    "features": [
      "Dine-In"
    ],
    "media": [
      "https://foodsauciety.s3.amazonaws.com/foodsauciety-gallery-1719314420811Screenshot_2024-01-23-13-26-06-942_com.example.student_app.jpg"
    ],
    "role": "vendor",
    "firebaseUid": "S1mykL9xnFZm1oKEBFJnE4MNjif2",
    "firebaseSignInProvider": "password",
    "isActive": true,
    "timing": [
      {
        "day": "Monday",
        "startTime": "06:00 AM",
        "closeTime": "04:00 PM",
        "isActive": true,
        "_id": "667aa7f5d3ca02751fdb3fed"
      }
    ],
    "createdAt": "2024-06-19T06:53:41.908Z",
    "updatedAt": "2024-06-25T11:20:21.603Z",
    "isNewUser": false,
    "loyaltyCardCount": 0
  }
}
*/

  bool? status;
  String? message;
  LoginModelUser? user;

  LoginModel({
    this.status,
    this.message,
    this.user,
  });
  LoginModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message']?.toString();
    user = (json['user'] != null) ? LoginModelUser.fromJson(json['user']) : null;
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    return data;
  }
}
