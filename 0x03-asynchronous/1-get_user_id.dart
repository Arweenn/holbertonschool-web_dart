import '1-util.dart';
import 'dart:convert';

// Function that retrieves the user ID from fetched user data
Future<String> getUserId() async {
  String result = await fetchUserData();
  Map resultJson = jsonDecode(result);
  return resultJson["id"];
}
