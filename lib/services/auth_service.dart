import 'dart:convert';
import 'package:http/http.dart' as http;

class AuthService {
  final String _baseUrl = "http://localhost:8090/market-app/api";

  Future<bool> login(String correo, String contrasena) async {
    final url = Uri.parse('$_baseUrl/login');

    try {
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'correo': correo.trim(),
          'contrasena': contrasena.trim(),
        }),
      );

      print('Status code: ${response.statusCode}');
      print('Response body: ${response.body}');

      return response.statusCode == 200;
    } catch (e) {
      print('Error al iniciar sesión: $e');
      return false;
    }
  }
}
