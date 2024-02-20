import 'package:flutter/material.dart';
import 'package:akxar_app/Test_page/test_page.dart';

class WordPage extends StatefulWidget {
  const WordPage({Key? key}) : super(key: key);

  @override
  State<WordPage> createState() => _WordPageState();
}

class _WordPageState extends State<WordPage> {
  int count = -1;
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            children: [
              Container(
                width: 400,
                height: 200,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                  color: Color(0xFF7E30E1),
                ),
                child: const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Question 1',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        "Which letter corresponds to the sound 'e'?",
                        style: TextStyle(
                          fontFamily: 'arial',
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35),
                child: Container(
                  width: 400,
                  height: 270,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                    color: Color(0xFF7E30E1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        const Text(
                          'Select the Correct Option',
                          style: TextStyle(
                            fontFamily: 'arial',
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40, left: 0),
                          child: Row(
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      count = 1;
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: count == 1
                                        ? const Color.fromARGB(255, 241, 38, 187)
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
                                    'and',
                                    style: TextStyle(
                                      fontFamily: 'arial',
                                      color: Colors.white,
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      count = 2;
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: count == 2
                                        ? const Color.fromARGB(255, 241, 38, 187)
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
                                    'c',
                                    style: TextStyle(
                                      fontFamily: 'arial',
                                      color: Colors.white,
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, left: 0),
                          child: Row(
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      count = 3;
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: count == 3
                                        ? const Color.fromARGB(255, 241, 38, 187)
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
                                    'to',
                                    style: TextStyle(
                                      fontFamily: 'arial',
                                      color: Colors.white,
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      count = 4;
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: count == 4
                                        ? const Color.fromARGB(255, 241, 38, 187)
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
                                    'F',
                                    style: TextStyle(
                                      fontFamily: 'arial',
                                      color: Colors.white,
                                      fontSize: 17,
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
              ),
              Padding(
                padding: const EdgeInsets.all(22),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TestPage(
                          testCompletion: [
                            true,
                            false,
                            false,
                            false
                          ], // Assuming you want to update the first element
                        ),
                      ),
                    );
                  },
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
      ),
    );
  }
}
