class UserModel {
  String? id;
  String? name;
  String? email;
  int? age;

  UserModel({this.id, this.name, this.email, this.age});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    name = json['name'];
    email = json['email'];
    age = json['age'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['age'] = this.age;
    return data;
  }
}
