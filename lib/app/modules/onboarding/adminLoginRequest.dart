class AdminLoginReqest {
  String? email;
  String? adminDeviceToken;
  String? password;

  AdminLoginReqest({this.email, this.adminDeviceToken, this.password});

  AdminLoginReqest.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    adminDeviceToken = json['adminDeviceToken'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['adminDeviceToken'] = this.adminDeviceToken;
    data['password'] = this.password;
    return data;
  }
}