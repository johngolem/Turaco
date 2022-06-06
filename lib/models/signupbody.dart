class SignUpBody {
  // String name;
  String phone;
  String email;
  String password;
  String userType;

  SignUpBody(
      // {required this.name,

      {required this.userType,
      required this.phone,
      required this.email,
      required this.password});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    // data["f_name"] = this.name;
    data["user_type"] = this.userType;
    data["email"] = this.email;
    data["password"] = this.password;
    data["mobile"] = this.phone;

    return data;
  }
}
