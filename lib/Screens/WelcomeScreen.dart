import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/LoginScreen.dart';
import 'package:flutter_app/Screens/RegisterScreen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(flex: 2),
            Center(
              child: Column(
                children: [
                  Image.asset(
                    'assets/app_logo.png',
                    color: Color.fromARGB(255, 106, 21, 121),
                    height: 140,
                  ),
                  SizedBox(height: 26),
                  Text(
                    'Welcome to IBWallet',
                    style: TextStyle(fontSize: 26, color: Colors.deepPurple),
                  ),
                ],
              ),
            ),
            Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  side: BorderSide(color: Colors.deepPurple),
                  backgroundColor: Colors.white,
                ),
                child: Text(
                  'Sign In',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterScreen()),
                  );
                },
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  side: BorderSide(color: Colors.deepPurple),
                  backgroundColor: Colors.white,
                ),
                child: Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 18, color: Colors.deepPurple),
                ),
              ),
            ),
            SizedBox(height: 50)
          ],
        ),
      ),
    );
  }
}
