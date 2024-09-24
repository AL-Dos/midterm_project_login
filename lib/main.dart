import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:midterm_project_login/signup.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/signup': (context) => const Signup(),
      },
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("lib/Assets/testIMG1.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SingleChildScrollView(
              child: LayoutBuilder(builder: (context, constraints) {
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(height: 80),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Transform.translate(
                              offset: const Offset(10, -5),
                              child: const Icon(
                                Icons.location_on,
                                color: Colors.white,
                                size: 90,
                              ),
                            ),
                            Transform.translate(
                              offset: const Offset(-10, 0),
                              child: const Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Travel",
                                    style: TextStyle(
                                      color: Color.fromARGB(240, 255, 255, 255),
                                      fontSize: 40,
                                      fontWeight: FontWeight.w500,
                                      height: 1,
                                      letterSpacing: 2,
                                      fontFamily: 'Akika',
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    "assistant",
                                    style: TextStyle(
                                      color: Color.fromARGB(240, 255, 255, 255),
                                      fontSize: 40,
                                      fontWeight: FontWeight.w500,
                                      height: 1,
                                      letterSpacing: 2,
                                      fontFamily: 'Akika',
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 60),
                        Container(
                          width: 290,
                          decoration: BoxDecoration(
                            color: Colors.black87.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: const TextField(
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255)),
                            decoration: InputDecoration(
                              prefixIcon: Padding(
                                padding: EdgeInsets.only(left: 15, right: 18),
                                child: CircleAvatar(
                                  radius: 17,
                                  backgroundColor: Colors.white,
                                  child:
                                      Icon(Icons.person, color: Colors.black87),
                                ),
                              ),
                              hintText: 'Username',
                              hintStyle: TextStyle(color: Colors.white70),
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 15),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          width: 290,
                          decoration: BoxDecoration(
                            color: Colors.black87.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: const TextField(
                            style: TextStyle(color: Colors.white),
                            obscureText: true,
                            decoration: InputDecoration(
                              prefixIcon: Padding(
                                padding: EdgeInsets.only(left: 15, right: 18),
                                child: CircleAvatar(
                                  radius: 17,
                                  backgroundColor: Colors.white,
                                  child:
                                      Icon(Icons.lock, color: Colors.black87),
                                ),
                              ),
                              hintText: 'Password',
                              hintStyle: TextStyle(color: Colors.white70),
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 15),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.lightGreen,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
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
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black87.withOpacity(0.7),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            minimumSize: const Size(10, 20),
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
                        Container(
                          width: 150,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: const Text(
                            "Login with your social media account",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 7,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 15),
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
                        const SizedBox(height: 15),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.black87.withOpacity(0.7),
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
                        const SizedBox(height: 7),
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
                            Navigator.pushNamed(context, '/signup');
                          },
                          child: const Text(
                            'SIGN UP',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
