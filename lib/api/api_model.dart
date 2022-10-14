import 'dart:io';
class LoginModel {
  int? status;
  String? message;
  String? method;
  LoginData? data;

  LoginModel({this.status, this.message, this.method, this.data});

  LoginModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    method = json['method'];
    data = json['data'] != null ?  LoginData.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    data['method'] = this.method;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class LoginData {
  String? id;
  String? sessionId;
  String? email;
  String? password;
  String? name;
  String? country;
  String? governmentId;
  String? address;
  String? latitude;
  String? longitude;
  String? dob;
  String? age;
  String? interest;
  String? countryCode;
  String? gender;
  String? phoneNumber;
  String? profilePicture;
  String? mapIcon;
  String? timezone;
  String? biography;
  String? userType;
  String? socialId;
  String? socialType;
  String? deviceType;
  String? deviceToken;
  String? createdAt;
  String? updatedAt;
  String? tagId;
  String? stripeCustomerId;
  String? accountStatus;
  String? linkedinUrl;
  String? snapchatUrl;
  String? instagramUrl;
  String? facebookUrl;
  String? stripeId;
  String? isNotification;
  String? boostsCount;
  String? referralCode;
  String? referralId;
  String? wallet;
  String? timeInterval;
  List<String>? images;

  LoginData(
      {this.id,
        this.sessionId,
        this.email,
        this.password,
        this.name,
        this.country,
        this.governmentId,
        this.address,
        this.latitude,
        this.longitude,
        this.dob,
        this.age,
        this.interest,
        this.countryCode,
        this.gender,
        this.phoneNumber,
        this.profilePicture,
        this.mapIcon,
        this.timezone,
        this.biography,
        this.userType,
        this.socialId,
        this.socialType,
        this.deviceType,
        this.deviceToken,
        this.createdAt,
        this.updatedAt,
        this.tagId,
        this.stripeCustomerId,
        this.accountStatus,
        this.linkedinUrl,
        this.snapchatUrl,
        this.instagramUrl,
        this.facebookUrl,
        this.stripeId,
        this.isNotification,
        this.boostsCount,
        this.referralCode,
        this.referralId,
        this.wallet,
        this.timeInterval,
    this.images});

  LoginData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    sessionId = json['session_id'];
    email = json['email'];
    password = json['password'];
    name = json['name'];
    country = json['country'];
    governmentId = json['government_id'];
    address = json['address'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    dob = json['dob'];
    age = json['age'];
    interest = json['interest'];
    countryCode = json['country_code'];
    gender = json['gender'];
    phoneNumber = json['phone_number'];
    profilePicture = json['profile_picture'];
    mapIcon = json['map_icon'];
    timezone = json['timezone'];
    biography = json['biography'];
    userType = json['user_type'];
    socialId = json['social_id'];
    socialType = json['social_type'];
    deviceType = json['device_type'];
    deviceToken = json['device_token'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    tagId = json['tag_id'];
    stripeCustomerId = json['stripe_customer_id'];
    accountStatus = json['account_status'];
    linkedinUrl = json['linkedin_url'];
    snapchatUrl = json['snapchat_url'];
    instagramUrl = json['instagram_url'];
    facebookUrl = json['facebook_url'];
    stripeId = json['stripe_id'];
    isNotification = json['is_notification'];
    boostsCount = json['boosts_count'];
    referralCode = json['referral_code'];
    referralId = json['referral_id'];
    wallet = json['wallet'];
    timeInterval = json['time_interval'];
    if (json['images'] != null) {
      images = <String>[];
     /* json['images'].forEach((v) {
        images!.add(Null?.fromJson(v));
      });*/
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['session_id'] = this.sessionId;
    data['email'] = this.email;
    data['password'] = this.password;
    data['name'] = this.name;
    data['country'] = this.country;
    data['government_id'] = this.governmentId;
    data['address'] = this.address;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['dob'] = this.dob;
    data['age'] = this.age;
    data['interest'] = this.interest;
    data['country_code'] = this.countryCode;
    data['gender'] = this.gender;
    data['phone_number'] = this.phoneNumber;
    data['profile_picture'] = this.profilePicture;
    data['map_icon'] = this.mapIcon;
    data['timezone'] = this.timezone;
    data['biography'] = this.biography;
    data['user_type'] = this.userType;
    data['social_id'] = this.socialId;
    data['social_type'] = this.socialType;
    data['device_type'] = this.deviceType;
    data['device_token'] = this.deviceToken;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['tag_id'] = this.tagId;
    data['stripe_customer_id'] = this.stripeCustomerId;
    data['account_status'] = this.accountStatus;
    data['linkedin_url'] = this.linkedinUrl;
    data['snapchat_url'] = this.snapchatUrl;
    data['instagram_url'] = this.instagramUrl;
    data['facebook_url'] = this.facebookUrl;
    data['stripe_id'] = this.stripeId;
    data['is_notification'] = this.isNotification;
    data['boosts_count'] = this.boostsCount;
    data['referral_code'] = this.referralCode;
    data['referral_id'] = this.referralId;
    data['wallet'] = this.wallet;
    data['time_interval'] = this.timeInterval;
   /* if (images != null) {
      data['images'] = images!.map((v) => v.toJson()).toList();
    }*/
    return data;
  }
}



class ImageUploadModel {
  bool isUploaded;
  bool uploading;
  File imageFile;
  String imageUrl;

  ImageUploadModel({
    required this.isUploaded,
    required this.uploading,
    required this.imageFile,
    required this.imageUrl,
  });
}