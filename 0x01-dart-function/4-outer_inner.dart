void main() {
  outer('Youssef Belhadj', '001');
}

void outer(String name, String id) {
  void inner() {
    String lastName;
    String firstName;

    var parts = name.split(' ');
    lastName = parts[1];
    firstName = parts[0];

    lastName = lastName.split('')[0];

    // print('$lastName.$firstName');
    print('Hello Agent $lastName.$firstName your id is $id');
    }
  inner();
}
