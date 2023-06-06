class ViewAllCarsResponse {
  int? code;
  List<Data>? data;
  String? message;

  ViewAllCarsResponse({this.code, this.data, this.message});

  ViewAllCarsResponse.fromJson(Map<String, dynamic> json) {
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
  String? carTitle;
  String? warranty;
  String? modelName;
  String? manufacturingYear;
  String? oilVariant;
  String? gearTransmission;
  String? price;
  List<String>? imagesUrl;
  List<dynamic>? views;
  List<dynamic>? interestedUsers;
  String? createdAt;
  String? updatedAt;
  int? iV;
  String? adminId;

  Data(
      {this.sId,
      this.carTitle,
      this.warranty,
      this.modelName,
      this.manufacturingYear,
      this.oilVariant,
      this.gearTransmission,
      this.price,
      this.imagesUrl,
      this.views,
      this.interestedUsers,
      this.createdAt,
      this.updatedAt,
      this.iV,
      this.adminId});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    carTitle = json['carTitle'];
    warranty = json['warranty'];
    modelName = json['modelName'];
    manufacturingYear = json['manufacturingYear'];
    oilVariant = json['oilVariant'];
    gearTransmission = json['gearTransmission'];
    price = json['price'];
    imagesUrl = json['imagesUrl'].cast<String>();
    if (json['views'] != null) {
      views = [];
      json['views'].forEach((v) {
        views!.add(v);
      });
    }
    if (json['interestedUsers'] != null) {
      interestedUsers = [];
      json['interestedUsers'].forEach((v) {
        interestedUsers!.add(v);
      });
    }
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
    data['imagesUrl'] = this.imagesUrl;
    if (this.views != null) {
      data['views'] = this.views!.map((v) => v).toList();
    }
    if (this.interestedUsers != null) {
      data['interestedUsers'] =
          this.interestedUsers!.map((v) => v).toList();
    }
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    data['adminId'] = this.adminId;
    return data;
  }
}