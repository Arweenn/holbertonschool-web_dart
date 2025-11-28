class User {
  String name = "";
  int age = 0;
  double height = 0.0;
  int id;

  // Constructor
  User({required this.name, required this.age, required this.height, required this.id});

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
    return "User(id : $id ,name: $name, age: $age, height: $height)";
  }
}