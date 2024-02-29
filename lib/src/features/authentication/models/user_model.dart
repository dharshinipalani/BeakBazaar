class UserModel {
  final String? id;
  final String fullName;
  final String email;
  final String phoneno;
  final String password;

  const UserModel({
    this.id,
    required this.fullName,
    required this.email,
    required this.password,
    required this.phoneno,
  });

  toJson() {
    return {
      "FullName" : fullName,
      "Email" : email,
      "Phone" : phoneno,
      "Password" : password,
    };
  }
}
