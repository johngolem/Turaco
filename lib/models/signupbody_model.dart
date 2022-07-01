

// we are creating an object
class SignUpBody {
  // String name;
  String phone;
  String email;
  String password;
  

  SignUpBody(
      // {required this.name,

    { 
      required this.phone,
      required this.email,
      required this.password 
      });


// sign up object

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    // data["f_name"] = this.name;
    data["email"] = this.email;
    data["password"] = this.password;
    data["mobile"] = this.phone;

    return data;
  }
}
