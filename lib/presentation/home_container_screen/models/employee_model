class Employee {
  String? address;
  int? age;
  String? email;
  String? firstname;
  String? gender;
  int? id;
  String? lastname;
  String? password;
  String? phoneNumber;

  Employee(
      {this.address,
      this.age,
      this.email,
      this.firstname,
      this.gender,
      this.id,
      this.lastname,
      this.password,
      this.phoneNumber});

  Employee.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    age = json['age'];
    email = json['email'];
    firstname = json['firstname'];
    gender = json['gender'];
    id = json['id'];
    lastname = json['lastname'];
    password = json['password'];
    phoneNumber = json['phone_number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['address'] = this.address;
    data['age'] = this.age;
    data['email'] = this.email;
    data['firstname'] = this.firstname;
    data['gender'] = this.gender;
    data['id'] = this.id;
    data['lastname'] = this.lastname;
    data['password'] = this.password;
    data['phone_number'] = this.phoneNumber;
    return data;
  }
}
