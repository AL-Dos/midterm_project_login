import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      const SizedBox(height: 20),
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
                      const SizedBox(height: 30),
                      const Text(
                        "Create an account",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromARGB(240, 255, 255, 255),
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          height: 1,
                          fontFamily: 'Akika',
                          letterSpacing: 2,
                        ),
                      ),
                      const SizedBox(height: 10),
                      _buildTextField(
                          Icons.contact_emergency_outlined, 'First Name'),
                      const SizedBox(height: 10),
                      _buildTextField(
                          Icons.contact_emergency_outlined, 'Last Name'),
                      const SizedBox(height: 10),
                      _buildTextField(Icons.mail_lock_sharp, 'Email'),
                      const SizedBox(height: 10),
                      _buildTextField(Icons.person_2, 'Username'),
                      const SizedBox(height: 10),
                      _buildTextField(Icons.lock, 'Password', isPassword: true),
                      const SizedBox(height: 10),
                      _buildTextField(Icons.lock, 'Confirm Password',
                          isPassword: true),
                      const SizedBox(height: 50),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepOrange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          minimumSize: const Size(290, 50),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Create Account',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightGreen,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          minimumSize: const Size(290, 50),
                        ),
                        onPressed: () {
                          Get.back();
                        },
                        child: const Text(
                          'Cancel',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}

Widget _buildTextField(IconData icon, String hintText,
    {bool isPassword = false}) {
  return Container(
    width: 290,
    decoration: BoxDecoration(
      color: Colors.black87.withOpacity(0.7),
      borderRadius: BorderRadius.circular(30),
    ),
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: TextField(
      style: const TextStyle(color: Colors.white),
      obscureText: isPassword,
      decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 15, right: 18),
            child: CircleAvatar(
              radius: 17,
              backgroundColor: Colors.white,
              child: Icon(
                icon,
                color: Colors.black87,
              ),
            ),
          ),
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.white70),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(vertical: 15)),
    ),
  );
}
