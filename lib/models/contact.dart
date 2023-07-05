class Contact {
  int? _id;
  String _email = '';
  String _password = '';

  Contact({required String email, required String password})
      : _email = email,
        _password = password;

  Contact.fromMap(Map<String, dynamic> map) {
    _id = map["id"];
    _email = map["email"];
    _password = map["password"];
  }

  int? get id => _id;
  String get email => _email;
  String get password => _password;

  set email(String value) {
    _email = value;
  }

  set password(String value) {
    _password = value;
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map["email"] = email;
    map["password"] = password;
    return map;
  }
}
