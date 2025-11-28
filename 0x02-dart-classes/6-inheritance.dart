import '6-password.dart';

class User {
  String? name;
  int? age;
  double? height;
  int? id;
  String? user_password;

  // Constructor
  User({this.name, this.age, this.height, this.id, this.user_password});

  // Convert User instance to JSON-like Map
  Map toJson() {
    return {'id': this.id, 'name': this.name, 'age': this.age, 'height': this.height};
  }

  // Create a User instance from a JSON-like Map
  static User fromJson(Map<dynamic, dynamic> userJson) {
    return new User(name: userJson['name'], age: userJson['age'], height: userJson['height'], id: userJson['id']);
  }

  @override
  String toString() {
    bool isValid = false;
    if (user_password != null && user_password!.isNotEmpty) {
      isValid = Password(password: user_password!).isValid();
    }
    return 'User(id : $id ,name: $name, age: $age, height: $height, Password: $isValid)';
  }
}
