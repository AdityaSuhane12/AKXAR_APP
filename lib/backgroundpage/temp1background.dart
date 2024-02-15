import 'package:akxar_app/Test_page/test_page.dart';
import 'package:flutter/material.dart';
class TempBack extends StatefulWidget {
  const TempBack({super.key});

  @override
  State<TempBack> createState() => _TempBackState();
}

class _TempBackState extends State<TempBack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF7E30E1),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
        ),
      ),
      body: Column(
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
              width: 350,
              height: 380,
              decoration: BoxDecoration(
                color: const Color(0xFF7E30E1),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 27),
                    child: Text(
                      'Do you confuse or forget the names of common household objects — calling a fork a spoon, for instance?',
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
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFE26EE5),
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
                                    fontSize: 17, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFE26EE5),
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
                                    fontSize: 18, color: Colors.white),
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
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFE26EE5),
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
                                    fontSize: 18, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFE26EE5),
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
                                    fontSize: 18, color: Colors.white),
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
        MaterialPageRoute(builder: (context) => const TestPage()),
      );
    },
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      backgroundColor: const Color(0xFF7E30E1),
    ),
    child: const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
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
    );
  }
}