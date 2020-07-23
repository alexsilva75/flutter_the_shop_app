import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import '../secret.dart';

class Auth with ChangeNotifier {
  String _token;
  DateTime _expiryDate;
  String _userId;

  Future<void> signup(String email, String password) async {
    final url =
        'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=${Secret.apiKey}';
  }
}
