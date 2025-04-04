import 'package:flutter/material.dart';
import 'admin_login_screen.dart';
import 'admin_home_screen.dart';

class AdminSignupScreen extends StatefulWidget {
  @override
  _AdminSignupScreenState createState() => _AdminSignupScreenState();
}

class _AdminSignupScreenState extends State<AdminSignupScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String? errorMessage;

  // Simulating admin credentials (in-memory)
  String? _adminEmail = "admin@farmfinity.com";
  String? _adminPassword = "admin123";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Admin Sign Up')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (emailController.text == _adminEmail &&
                    passwordController.text == _adminPassword) {
                  // Simulate successful admin sign-up
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => AdminHomeScreen()),
                  );
                } else {
                  setState(() {
                    errorMessage = 'Admin credentials are invalid';
                  });
                }
              },
              child: Text('Sign Up'),
            ),
            if (errorMessage != null) ...[
              SizedBox(height: 10),
              Text(
                errorMessage!,
                style: TextStyle(color: Colors.red),
              ),
            ],
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => AdminLoginScreen()));
              },
              child: Text('Already have an account? Login'),
            ),
          ],
        ),
      ),
    );
  }
}
