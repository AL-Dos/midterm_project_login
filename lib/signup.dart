import 'package:flutter/material.dart';
import 'package:midterm_project_login/main.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {'/home': (context) => const MainApp()},
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("lib/Assets/testIMG2.jpg"),
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
                          const SizedBox(height: 60),
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
                                        color:
                                            Color.fromARGB(240, 255, 255, 255),
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
                                        color:
                                            Color.fromARGB(240, 255, 255, 255),
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
                          const SizedBox(height: 40),
                          const Text(
                            "Create your account",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                                height: 1,
                                fontFamily: 'Akika',
                                letterSpacing: 2),
                          ),
                          const SizedBox(height: 30),
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
                                    child: Icon(Icons.mail_lock_sharp,
                                        color: Colors.black87),
                                  ),
                                ),
                                hintText: 'Email',
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
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255)),
                              decoration: InputDecoration(
                                prefixIcon: Padding(
                                  padding: EdgeInsets.only(left: 15, right: 18),
                                  child: CircleAvatar(
                                    radius: 17,
                                    backgroundColor: Colors.white,
                                    child: Icon(Icons.person,
                                        color: Colors.black87),
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
                          const SizedBox(height: 80),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.deepOrange,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                minimumSize: const Size(290, 50)),
                            onPressed: () {},
                            child: const Text(
                              'Create Account',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                          const SizedBox(height: 10),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.lightGreen,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                minimumSize: const Size(290, 50)),
                            onPressed: () {
                              Navigator.pushNamed(context, '/home');
                            },
                            child: const Text(
                              'Cancel',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          )
                        ],
                      )),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
