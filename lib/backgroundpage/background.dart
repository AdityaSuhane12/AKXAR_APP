import 'package:akxar_app/backgroundpage/temp1background.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  final ref = FirebaseDatabase.instance.ref('backgroundInfo');
  int selectedOptionIndex = -1; // Default value to indicate no option selected

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(30.0), // Set the height here
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xFF7E30E1),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 50),
              child: Text(
                'Background Information',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                ),
              ),
            ),
            Center(
              child: Container(
                width: 370,
                height: 400,
                decoration: BoxDecoration(
                  color: const Color(0xFF7E30E1),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Question 1',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                      child: Text(
                        'Do you need to read a sentence or paragraph three or four times before you “get it”?',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    selectedOptionIndex = 0;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: selectedOptionIndex == 0
                                      ? const Color.fromARGB(255, 241, 38, 187) // Darker color when selected
                                      : const Color(0xFFE26EE5),
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 15,
                                    horizontal: 30,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: const Text(
                                  'Very Often',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    selectedOptionIndex = 1;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: selectedOptionIndex == 1
                                      ? const Color.fromARGB(255, 241, 38, 187) // Darker color when selected
                                      : const Color(0xFFE26EE5),
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 15,
                                    horizontal: 30,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: const Text(
                                  'Often',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    selectedOptionIndex = 2;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: selectedOptionIndex == 2
                                      ? const Color.fromARGB(255, 241, 38, 187) // Darker color when selected
                                      : const Color(0xFFE26EE5),
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 15,
                                    horizontal: 25,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: const Text(
                                  'Sometimes',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    selectedOptionIndex = 3;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: selectedOptionIndex == 3
                                      ? const Color.fromARGB(255, 241, 38, 187) // Darker color when selected
                                      : const Color(0xFFE26EE5),
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 15,
                                    horizontal: 42,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: const Text(
                                  'Never',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: ElevatedButton(
                onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const TempBack(),
                          ),
                        );
                      }, // Disable button if no option is selected
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  backgroundColor: const Color(0xFF7E30E1),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Select & Next",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
