```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

class CustomApiException implements Exception {
  final String message;
  CustomApiException(this.message);
  @override
  String toString() => 'CustomApiException: $message';
}

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Process jsonData
    } else {
      throw CustomApiException('Failed to load data: ${response.statusCode}');
    }
  } on CustomApiException catch (e) {
    print('Custom API Error: ${e.message}');
    // Handle the custom exception specifically
  } on FormatException catch (e) {
    print('JSON format error: $e');
  } catch (e) {
    print('Unexpected error: $e');
    // Handle other unexpected exceptions
  }
}
```