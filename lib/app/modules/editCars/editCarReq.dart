class EditCar {
  String? sId;
  String? carTitle;
  String? warranty;
  String? modelName;
  String? manufacturingYear;
  String? oilVariant;
  String? gearTransmission;
  String? price;
  List<String>? imagesUrl;

  EditCar(
      {this.sId,
      this.carTitle,
      this.warranty,
      this.modelName,
      this.manufacturingYear,
      this.oilVariant,
      this.gearTransmission,
      this.price,
      this.imagesUrl});

  EditCar.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    carTitle = json['carTitle'];
    warranty = json['warranty'];
    modelName = json['modelName'];
    manufacturingYear = json['manufacturingYear'];
    oilVariant = json['oilVariant'];
    gearTransmission = json['gearTransmission'];
    price = json['price'];
    imagesUrl = json['imagesUrl'].cast<String>();
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
    return data;
  }
}
