class AdminRegisterReqest {
  String? email;
  String? name;
  String? password;

  AdminRegisterReqest({this.email, this.name, this.password});

  AdminRegisterReqest.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    name = json['name'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['name'] = this.name;
    data['password'] = this.password;
    return data;
  }
}
