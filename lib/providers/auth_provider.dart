import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  // Dummy in-memory user storage for demonstration purposes
  String? _user;

  String? get user => _user;

  // Simulate sign up
  Future<String> signUp(String email, String password) async {
    // Normally, you would save this user info in local storage or a database
    _user = email;  // For simplicity, use the email as the user ID
    notifyListeners();
    return 'Signed Up Successfully';
  }

  // Simulate sign in
  Future<String> signIn(String email, String password) async {
    // Normally, you would verify the user info here (e.g., with a backend or local storage)
    if (email.isNotEmpty && password.isNotEmpty) {
      _user = email;  // Set the user when signed in
      notifyListeners();
      return 'Signed In Successfully';
    }
    return 'Invalid Credentials';
  }

  // Simulate sign out
  Future<void> signOut() async {
    _user = null;  // Clear the current user
    notifyListeners();
  }
}
