class NotificationList {
  int? code;
  List<Data>? data;
  String? message;

  NotificationList({this.code, this.data, this.message});

  NotificationList.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['message'] = this.message;
    return data;
  }
}

class Data {
  String? sId;
  String? title;
  String? message;
  UserId? userId;
  CarId? carId;
  String? time;
  String? createdAt;
  String? updatedAt;
  int? iV;

  Data(
      {this.sId,
      this.title,
      this.message,
      this.userId,
      this.carId,
      this.time,
      this.createdAt,
      this.updatedAt,
      this.iV});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    title = json['title'];
    message = json['message'];
    userId =
        json['userId'] != null ? new UserId.fromJson(json['userId']) : null;
    carId = json['carId'] != null ? new CarId.fromJson(json['carId']) : null;
    time = json['time'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['title'] = this.title;
    data['message'] = this.message;
    if (this.userId != null) {
      data['userId'] = this.userId!.toJson();
    }
    if (this.carId != null) {
      data['carId'] = this.carId!.toJson();
    }
    data['time'] = this.time;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}

class UserId {
  String? sId;
  String? phone;
  String? name;
  String? gender;
  String? email;
  String? city;
  List<String>? wishlist;
  List<String>? interestedCars;
  String? createdAt;
  String? updatedAt;
  int? iV;

  UserId(
      {this.sId,
      this.phone,
      this.name,
      this.gender,
      this.email,
      this.city,
      this.wishlist,
      this.interestedCars,
      this.createdAt,
      this.updatedAt,
      this.iV});

  UserId.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    phone = json['phone'];
    name = json['name'];
    gender = json['gender'];
    email = json['email'];
    city = json['city'];
    wishlist = json['wishlist'].cast<String>();
    interestedCars = json['interestedCars'].cast<String>();
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['phone'] = this.phone;
    data['name'] = this.name;
    data['gender'] = this.gender;
    data['email'] = this.email;
    data['city'] = this.city;
    data['wishlist'] = this.wishlist;
    data['interestedCars'] = this.interestedCars;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}

class CarId {
  String? sId;
  String? carTitle;
  String? warranty;
  String? modelName;
  String? manufacturingYear;
  String? oilVariant;
  String? gearTransmission;
  String? price;
  String? marketPrice;
  String? distanceDriven;
  String? safetyRating;
  List<String>? imagesUrl;
  List<String>? views;
  List<String>? interestedUsers;
  String? createdAt;
  String? updatedAt;
  int? iV;
  String? adminId;

  CarId(
      {this.sId,
      this.carTitle,
      this.warranty,
      this.modelName,
      this.manufacturingYear,
      this.oilVariant,
      this.gearTransmission,
      this.price,
      this.marketPrice,
      this.distanceDriven,
      this.safetyRating,
      this.imagesUrl,
      this.views,
      this.interestedUsers,
      this.createdAt,
      this.updatedAt,
      this.iV,
      this.adminId});

  CarId.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    carTitle = json['carTitle'];
    warranty = json['warranty'];
    modelName = json['modelName'];
    manufacturingYear = json['manufacturingYear'];
    oilVariant = json['oilVariant'];
    gearTransmission = json['gearTransmission'];
    price = json['price'];
    marketPrice = json['marketPrice'];
    distanceDriven = json['distanceDriven'];
    safetyRating = json['safetyRating'];
    imagesUrl = json['imagesUrl'].cast<String>();
    views = json['views'].cast<String>();
    interestedUsers = json['interestedUsers'].cast<String>();
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
    adminId = json['adminId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['carTitle'] = this.carTitle;
    data['warranty'] = this.warranty;
    data['modelName'] = this.modelName;
    data['manufacturingYear'] = this.manufacturingYear;
    data['oilVariant'] = this.oilVariant;
    data['gearTransmission'] = this.gearTransmission;
    data['price'] = this.price;
    data['marketPrice'] = this.marketPrice;
    data['distanceDriven'] = this.distanceDriven;
    data['safetyRating'] = this.safetyRating;
    data['imagesUrl'] = this.imagesUrl;
    data['views'] = this.views;
    data['interestedUsers'] = this.interestedUsers;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    data['adminId'] = this.adminId;
    return data;
  }
}
