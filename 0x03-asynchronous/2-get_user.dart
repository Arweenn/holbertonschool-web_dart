import '2-util.dart';

// Function that retrieves and prints user data, handling errors
Future<void> getUser() async {
  try {
    print(await fetchUser());
  } catch (error) {
    print('error caught: $error');
  }
}
