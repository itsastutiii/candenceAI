import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image with Transparency
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg-2.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.8), // 60% transparency
                  BlendMode.dstATop,
                ),
              ),
            ),
          ),

          // Content Overlay
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo
                Image.asset(
                  'assets/logo-1.png',
                  width: 150, // Adjust the size of the logo
                  height: 150,
                  errorBuilder: (context, error, stackTrace) {
                    return Icon(Icons.error, size: 150, color: Colors.red);
                  },
                ),

                SizedBox(height: 30),

                // Welcome Text
                Text(
                  'Welcome to CandenceAI',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black, // Black text
                  ),
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: 20),

                // Sign In/Sign Up Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Sign In Button
                    ElevatedButton(
                      onPressed: () {
                        // Navigate to Sign In Page
                      },
                      child: Text(
                        'Sign In',
                        style: TextStyle(color: Colors.black), // Black text
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white
                            .withOpacity(0.6), // Black box with transparency
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),

                    // Sign Up Button
                    ElevatedButton(
                      onPressed: () {
                        // Navigate to Sign Up Page
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.black), // Black text
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white
                            .withOpacity(0.6), // Black box with transparency
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
