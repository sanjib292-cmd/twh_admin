class getAllUserList {
  int? code;
  List<Data>? data;
  String? message;

  getAllUserList({this.code, this.data, this.message});

  getAllUserList.fromJson(Map<String, dynamic> json) {
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
  List<String>? wishlist;
  String? sId;
  String? phone;
  String? name;
  String? gender;
  String? email;
  String? city;
  List<dynamic>? interestedCars;
  String? createdAt;
  String? updatedAt;
  int? iV;

  Data(
      {this.wishlist,
      this.sId,
      this.phone,
      this.name,
      this.gender,
      this.email,
      this.city,
      this.interestedCars,
      this.createdAt,
      this.updatedAt,
      this.iV});

  Data.fromJson(Map<String, dynamic> json) {
    wishlist = json['wishlist'].cast<String>();
    sId = json['_id'];
    phone = json['phone'];
    name = json['name'];
    gender = json['gender'];
    email = json['email'];
    city = json['city'];
    if (json['interestedCars'] != null) {
      interestedCars = [];
      json['interestedCars'].forEach((v) {
        interestedCars!.add(v);
      });
    }
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['wishlist'] = this.wishlist;
    data['_id'] = this.sId;
    data['phone'] = this.phone;
    data['name'] = this.name;
    data['gender'] = this.gender;
    data['email'] = this.email;
    data['city'] = this.city;
    if (this.interestedCars != null) {
      data['interestedCars'] =
          this.interestedCars!.map((v) => v).toList();
    }
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}