import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                  image: AssetImage("lib/Assets/testIMG1.jpeg"),
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
                            "Travel\nassistant",
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
                      width: 290,
                      decoration: BoxDecoration(
                        color: Colors.black87.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: const TextField(
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(left: 15, right: 18),
                            child: CircleAvatar(
                              radius: 17,
                              backgroundColor: Colors.white,
                              child: Icon(Icons.person, color: Colors.black87),
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
                    Container(
                      width: 290,
                      decoration: BoxDecoration(
                        color: Colors.black87.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: const TextField(
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(left: 15, right: 18),
                            child: CircleAvatar(
                              radius: 17,
                              backgroundColor: Colors.white,
                              child: Icon(Icons.lock, color: Colors.black87),
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
                          backgroundColor: Colors.lightGreen,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          padding: const EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 80,
                          ),
                          minimumSize: const Size(290, 50)),
                      onPressed: () {
                        // Handle sign-in
                      },
                      child: const Text(
                        'SIGN IN',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black.withOpacity(0.5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 7,
                          horizontal: 15,
                        ),
                      ),
                      onPressed: () {
                        // Handle sign-in
                      },
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(
                            fontSize: 7,
                            color: Colors.white,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 7),
                      child: const Text(
                        "Login with your social media account",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 7,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 45,
                          height: 45,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                          child: Center(
                            child: Container(
                              width: 25,
                              height: 25,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: IconButton(
                                padding: EdgeInsets.zero,
                                icon: const FaIcon(
                                  FontAwesomeIcons.facebookF,
                                  color: Colors.blue,
                                  size: 15,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          width: 45,
                          height: 45,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                          ),
                          child: Center(
                            child: Container(
                              width: 25,
                              height: 25,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: IconButton(
                                padding: EdgeInsets.zero,
                                icon: const FaIcon(
                                  FontAwesomeIcons.googlePlusG,
                                  color: Colors.red,
                                  size: 15,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          width: 45,
                          height: 45,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.lightBlueAccent,
                          ),
                          child: Center(
                            child: Container(
                              width: 25,
                              height: 25,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: IconButton(
                                padding: EdgeInsets.zero,
                                icon: const FaIcon(
                                  FontAwesomeIcons.twitter,
                                  color: Colors.lightBlueAccent,
                                  size: 15,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          width: 45,
                          height: 45,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.pinkAccent,
                          ),
                          child: Center(
                            child: Container(
                              width: 25,
                              height: 25,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: IconButton(
                                padding: EdgeInsets.zero,
                                icon: const FaIcon(
                                  FontAwesomeIcons.instagram,
                                  color: Colors.pinkAccent,
                                  size: 17,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black87.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 7),
                      child: const Text(
                        "Don't have an account?",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 7,
                            fontWeight: FontWeight.normal),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepOrange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          padding: const EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 80,
                          ),
                          minimumSize: const Size(290, 50)),
                      onPressed: () {
                        // Handle sign-in
                      },
                      child: const Text(
                        'SIGN UP',
                        style: TextStyle(fontSize: 16, color: Colors.white),
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
