import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            // Background image
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("lib/Assets/testIMG2.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // ignore: avoid_unnecessary_containers
                    Container(
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.white,
                            size: 100,
                          ),
                          Text(
                            "Travel\nAssistant",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black87.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(left: 15, right: 18),
                            child: CircleAvatar(
                              radius: 17,
                              backgroundColor: Colors.white,
                              child: Icon(Icons.person, color: Colors.black),
                            ),
                          ),
                          hintText: 'Username',
                          hintStyle: TextStyle(color: Colors.white70),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(vertical: 15),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    // Password field
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black87.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(left: 15, right: 18),
                            child: CircleAvatar(
                              radius: 17,
                              backgroundColor: Colors.white,
                              child: Icon(Icons.lock, color: Colors.black),
                            ),
                          ),
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Colors.white70),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(vertical: 15),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Sign In Button
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 80,
                        ),
                      ),
                      onPressed: () {
                        // Handle sign-in
                      },
                      child: const Text(
                        'SIGN IN',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Social media login options
                    const Text(
                      "Login with your account via social",
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.facebook),
                          color: Colors.blue,
                          iconSize: 40,
                          onPressed: () {
                            // Handle Facebook login
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.g_translate),
                          color: Colors.red,
                          iconSize: 40,
                          onPressed: () {
                            // Handle Google login
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.alternate_email),
                          color: Colors.blueAccent,
                          iconSize: 40,
                          onPressed: () {
                            // Handle Twitter login
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.camera_alt),
                          color: Colors.pinkAccent,
                          iconSize: 40,
                          onPressed: () {
                            // Handle Instagram login
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    // Sign Up Button
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.orange),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 80,
                        ),
                      ),
                      onPressed: () {
                        // Handle sign-up
                      },
                      child: const Text(
                        'SIGN UP',
                        style: TextStyle(fontSize: 16, color: Colors.orange),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
