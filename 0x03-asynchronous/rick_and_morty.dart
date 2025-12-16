import 'package:http/http.dart' as http;
import 'dart:convert';

// Function that retrieves and prints all character names from the Rick and Morty API
Future<void> printRmCharacters([String? url]) async {
  try {
    final endpoint = url ?? 'https://rickandmortyapi.com/api/character';
    final response = await http.get(Uri.parse(endpoint));

    // Check if the response is successful
    if (response.statusCode == 200) {
      Map<String, dynamic> responseBody = jsonDecode(response.body);
      String? next = responseBody['info']['next'];
      List<dynamic> characters = responseBody['results'];
      characters.forEach((character) => print(character['name']));

      // If there is a next page URL, recursively fetch the next page
      if (next != null && next.isNotEmpty) await printRmCharacters(next);
    } else {
      print('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (error) {
    print('Error caught: $error');
  }
}
