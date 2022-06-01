// ignore_for_file: non_constant_identifier_names

class User {
  String name;
  String email;
  String mobile;
  int user_type;
  String token;
  String renewalToken;

  User({this.name, this.email,this.mobile,required this.user_type, this.token, this.renewalToken});

  factory User.fromJson(Map<String, dynamic> responseData) {
    return User(
        name: responseData['name'],
        email: responseData['email'],
        mobile: responseData['mobile'],
        user_type: responseData['type'],
        token: responseData['access_token'],
        renewalToken: responseData['renewal_token']);
  }
}
