import 'package:flutter/material.dart';
import 'package:flutter_application_1/homescreen.dart';
import './theme/colors.dart'; // Import the AppColors class
import 'signup.dart';
import 'main_screen.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _fullNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    // Get screen height
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: AppColors.primary, // Use primary color from AppColors
      ),
      body: SingleChildScrollView(
        // Make screen scrollable
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Sign up now',
              style: TextStyle(
                fontSize: 24, 
                fontWeight: FontWeight.bold, 
                color: AppColors.text, // Use text color from AppColors
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8),
            Text(
              'Please fill the details and create account',
              textAlign: TextAlign.center,
              style: TextStyle(color: AppColors.grey), // Use grey color from AppColors
            ),
            SizedBox(height: 24),
            TextField(
              controller: _fullNameController,
              decoration: InputDecoration(
                labelText: 'Full Name',
                labelStyle: TextStyle(color: AppColors.text), // Use text color for labels
                border: OutlineInputBorder(
                  // Capsule shape
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _passwordController,
              obscureText: _obscurePassword,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(color: AppColors.text), // Use text color for labels
                border: OutlineInputBorder(
                  // Capsule shape
                  borderRadius: BorderRadius.circular(30.0),
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscurePassword ? Icons.visibility : Icons.visibility_off,
                    color: AppColors.text, // Use text color for visibility icon
                  ),
                  onPressed: () {
                    setState(() {
                      _obscurePassword = !_obscurePassword;
                    });
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Text(
                'Password must be 8 characters',
                style: TextStyle(fontSize: 12, color: AppColors.grey), // Use grey color
              ),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // Handle sign-up logic
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => MainScreen()),
                );
              },
              child: Text('Sign In'),
              style: ElevatedButton.styleFrom(
                textStyle: TextStyle(color: Colors.white), // Corrected: Use TextStyle for text styling
                backgroundColor: AppColors.primary, // Corrected: Use backgroundColor for the button
                padding: EdgeInsets.symmetric(vertical: 16),
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Don't have an Account?"),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => SignUpScreen()),
                    );
                  },
                  child: Text(
                    'Sign up',
                    style: TextStyle(color: AppColors.primary), // Use primary color for the sign-in text
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Or connect',
              textAlign: TextAlign.center,
              style: TextStyle(color: AppColors.grey), // Use grey color for this text
            ),
            SizedBox(height: 16),
            Container(
            height: screenHeight * 0.1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Adds even spacing between items
              children: [
                Flexible(
                  child: ClipOval(
                    child: SizedBox(
                      child: IconButton(
                        icon: Image.asset('lib/images/facebook_logo.png'),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: ClipOval(
                    child: SizedBox(
                      child: IconButton(
                        icon: Image.asset('lib/images/instagram_logo.png'),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: ClipOval(
                    child: SizedBox(
                      child: IconButton(
                        icon: Image.asset('lib/images/twitter_logo.png'),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
              ],
            )
            )
          ],
        ),
      ),
    );
  }
}
