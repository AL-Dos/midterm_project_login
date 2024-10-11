import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class Dashboard extends StatelessWidget {
  final List<dynamic> meals;
  const Dashboard({super.key, required this.meals});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: LayoutBuilder(builder: (context, constraints) {
              return Column(
                children: [
                  Stack(
                    children: [
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: meals.length,
                        itemBuilder: (context, index) {
                          final meal = meals[index];
                          return Card(
                            shadowColor: Colors.yellowAccent,
                            elevation: 5,
                            margin: const EdgeInsets.all(10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.network(
                                      meal['strMealThumb'],
                                      height: 400,
                                      width: 700,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    meal['strMeal'],
                                    style: const TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    meal['strTags'] != null &&
                                            meal['strTags'].isNotEmpty
                                        ? 'Tags: ${meal['strTags']}'
                                        : 'Tags: Not available',
                                    style: const TextStyle(
                                        fontSize: 10,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(height: 15),
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              'ID',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black54),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Expanded(
                                            child: Text(
                                              'Category',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black54),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Expanded(
                                            child: Text(
                                              'Origin',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black54),
                                              textAlign: TextAlign.center,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: _descriptionBox(
                                            meal['idMeal'], Colors.blue),
                                      ),
                                      const SizedBox(width: 10),
                                      Expanded(
                                        child: _descriptionBox(
                                            meal['strCategory'], Colors.yellow),
                                      ),
                                      const SizedBox(width: 10),
                                      Expanded(
                                        child: _descriptionBox(
                                            meal['strArea'], Colors.red),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'How to Cook',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    meal['strInstructions'],
                                    style: const TextStyle(
                                      fontSize: 15,
                                      height: 2,
                                      color: Colors.black87,
                                    ),
                                    textAlign: TextAlign.justify,
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                      Positioned(
                          right: 40,
                          top: 380,
                          child: Container(
                            width: 60,
                            height: 60,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 9),
                            child: IconButton(
                              onPressed: () {},
                              padding: EdgeInsets.zero,
                              icon: const Icon(Icons.favorite,
                                  color: Colors.red, size: 45),
                            ),
                          )),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Column(
                    children: [
                      const Text(
                        "Share through social media",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _iconShare(
                              FontAwesomeIcons.facebookF, Colors.blueAccent),
                          const SizedBox(width: 15),
                          _iconShare(FontAwesomeIcons.xTwitter, Colors.black87),
                          const SizedBox(width: 15),
                          _iconShare(
                              FontAwesomeIcons.instagram, Colors.pinkAccent),
                          const SizedBox(width: 15),
                          _iconShare(FontAwesomeIcons.tiktok, Colors.black87),
                          const SizedBox(width: 15),
                          _iconShare(
                              FontAwesomeIcons.telegram, Colors.lightBlueAccent)
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
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
                      'Logout',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              );
            }),
          ),
        ],
      ),
    );
  }
}

Widget _descriptionBox(dynamic text, Color bgColor) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
    margin: const EdgeInsets.symmetric(vertical: 5),
    width: 115,
    decoration: BoxDecoration(
      color: bgColor,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          text.toString(),
          style: const TextStyle(fontSize: 13, color: Colors.black),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}

Widget _iconShare(IconData icon, Color iconColor) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        width: 60,
        height: 60,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          color: Colors.white60,
        ),
        child: Center(
          child: Container(
            width: 40,
            height: 40,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white70,
            ),
            child: IconButton(
              padding: EdgeInsets.zero,
              icon: FaIcon(
                icon,
                color: iconColor,
                size: 25,
              ),
              onPressed: () {},
            ),
          ),
        ),
      ),
    ],
  );
}
