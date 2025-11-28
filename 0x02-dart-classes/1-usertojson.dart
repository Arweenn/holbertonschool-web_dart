class User {
  String name = "";
  int age = 0;
  double height = 0.0;

  // Constructor
  User({required this.name, required this.age, required this.height});

  // Convert User instance to JSON-like Map
  Map toJson() {
    return {'name': this.name, 'age': this.age, 'height': this.height};
  }
}
