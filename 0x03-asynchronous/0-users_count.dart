import '0-util.dart';

// Function that prints the number of users
Future<void> usersCount() async {
  print(await fetchUsersCount());
}