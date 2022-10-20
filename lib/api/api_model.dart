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
    data['status'] = status;
    data['message'] = message;
    data['method'] = method;
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
    data['id'] = id;
    data['session_id'] = sessionId;
    data['email'] = email;
    data['password'] = password;
    data['name'] = name;
    data['country'] = country;
    data['government_id'] = governmentId;
    data['address'] = address;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    data['dob'] = dob;
    data['age'] = age;
    data['interest'] = interest;
    data['country_code'] = countryCode;
    data['gender'] = gender;
    data['phone_number'] = phoneNumber;
    data['profile_picture'] = profilePicture;
    data['map_icon'] = mapIcon;
    data['timezone'] = timezone;
    data['biography'] = biography;
    data['user_type'] = userType;
    data['social_id'] = socialId;
    data['social_type'] = socialType;
    data['device_type'] = deviceType;
    data['device_token'] = deviceToken;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['tag_id'] = tagId;
    data['stripe_customer_id'] = stripeCustomerId;
    data['account_status'] = accountStatus;
    data['linkedin_url'] = linkedinUrl;
    data['snapchat_url'] = snapchatUrl;
    data['instagram_url'] = instagramUrl;
    data['facebook_url'] = facebookUrl;
    data['stripe_id'] = stripeId;
    data['is_notification'] = isNotification;
    data['boosts_count'] = boostsCount;
    data['referral_code'] = referralCode;
    data['referral_id'] = referralId;
    data['wallet'] = wallet;
    data['time_interval'] = timeInterval;
   /* if (images != null) {
      data['images'] = images!.map((v) => v.toJson()).toList();
    }*/
    return data;
  }
}


