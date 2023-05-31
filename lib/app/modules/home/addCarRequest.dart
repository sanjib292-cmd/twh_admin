class AddCarsRequest {
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
  List<dynamic>? imagesUrl;

  AddCarsRequest(
      {this.carTitle,
      this.warranty,
      this.modelName,
      this.manufacturingYear,
      this.oilVariant,
      this.gearTransmission,
      this.price,
      this.marketPrice,
      this.distanceDriven,
      this.safetyRating,
      this.imagesUrl});

  AddCarsRequest.fromJson(Map<String, dynamic> json) {
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
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
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
    return data;
  }
}
