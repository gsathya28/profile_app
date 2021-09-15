class User {
  String name;
  String phone;
  String email;
  String bio;

  User(
      {required this.name,
      required this.phone,
      required this.email,
      required this.bio});

  static bool nameValidator(String name) {
    return name.isNotEmpty;
  }

  static bool phoneValidator(String phone) {
    String pattern = r'(^(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}$)';
    RegExp phoneReg = RegExp(pattern);
    return phone.isNotEmpty && phoneReg.hasMatch(phone);
  }

  static bool emailValidator(String email) {
    // TODO: Legitimate Email Validation
    return email.isNotEmpty;
  }

  static bool bioValidator(String bio) {
    return bio.isNotEmpty;
  }
}
