class UserDataModel {
  late final int id;
  late final String fullname;
  late final String phone;
  late final String email;
  late final String image;
  late final int isBan;
  late final bool isActive;
  late final int unreadNotifications;
  late final String userType;
  late final String token;
  late final City? city;
  late final int userCartCount;
  UserDataModel.fromJson(Map<String, dynamic> json) {
    id = json['id']??0;
    fullname = json['fullname']??'';
    phone = json['phone']??'';
    email = json['email']??'';
    image = json['image']??'';
    isBan = json['is_ban']??0;
    isActive = json['is_active']??false;
    unreadNotifications = json['unread_notifications']??0;
    userType = json['user_type']??'';
    token = json['token']??'';
    city = json['city'] != null ? City.fromJson(json['city']) : null;
    userCartCount = json['user_cart_count']??0;
  }
}
class City {
  late final int id;
  late final String type;
  late final double lat;
  late final double lng;
  late final String location;
  late final String description;
  late final bool isDefault;
  late final String phone;

  City.fromJson(Map<String, dynamic> json){
    id = json['id']??0;
    type = json['type']??'';
    lat = json['lat']??0.0;
    lng = json['lng']??0.0;
    location = json['location']??'';
    description = json['description']??'';
    isDefault = json['is_default']??false;
    phone = json['phone']??'';
  }
}