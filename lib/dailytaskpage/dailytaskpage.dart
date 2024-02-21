import 'package:akxar_app/dailytaskpage/dailytask1.dart';
import 'package:flutter/material.dart';

class DailyTaskPage extends StatefulWidget {
  const DailyTaskPage({super.key});

  @override
  State<DailyTaskPage> createState() => _DailyTaskPageState();
}

class _DailyTaskPageState extends State<DailyTaskPage> {
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
        child: Column(children: [
          const Padding(
            padding: EdgeInsets.only(top: 13, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Your  Daily  Tasks",
                  style: TextStyle(
                      fontFamily: "arial",
                      fontSize: 20,
                      color: Color(0xFF7E30E1),
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            width: 325,
            height: 93,
            decoration: const BoxDecoration(
                color: Color(0xFF7E30E1),
                borderRadius: BorderRadius.all(Radius.circular(25))),
            child: Column(
              children: [
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 4, left: 20),
                      child: Text(
                        "Task 1 ",
                        style: TextStyle(
                            fontFamily: "arial",
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 2, left: 20),
                      child: Text(
                        'Peform the Question for maths',
                        style: TextStyle(
                          fontFamily: "arial",
                          fontSize: 16,
                          color: Color.fromARGB(245, 255, 255, 255),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6, left: 10),
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Task1()));
                        },
                        icon: const Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 27.0,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 13),
            child: Container(
              width: 325,
              height: 93,
              decoration: const BoxDecoration(
                  color: Color(0xFF7E30E1),
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 4, left: 20),
                        child: Text(
                          "Task 2 ",
                          style: TextStyle(
                              fontFamily: "arial",
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 2, left: 20),
                        child: Text(
                          'Peform the  Word Quiz',
                          style: TextStyle(
                            fontFamily: "arial",
                            fontSize: 16,
                            color: Color.fromARGB(245, 255, 255, 255),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6, left: 66),
                        child: IconButton(
                          onPressed: () {
                            // Navigator.push(
                      Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Task1()));
                          },
                          icon: const Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 27.0,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 13),
            child: Container(
              width: 325,
              height: 93,
              decoration: const BoxDecoration(
                color: Color(0xFF7E30E1),
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 4, left: 20),
                        child: Text(
                          "Task 3 ",
                          style: TextStyle(
                              fontFamily: "arial",
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 2, left: 20),
                        child: Text(
                          'Spelling and Phonoligical Quiz',
                          style: TextStyle(
                            fontFamily: "arial",
                            fontSize: 16,
                            color: Color.fromARGB(245, 255, 255, 255),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6, left: 10),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Task1()));
                          },
                          icon: const Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 27.0,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              width: 320,
              height: 265,
              decoration: BoxDecoration(
                  color: const Color(0xFF7E30E1),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(children: [
                const Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Text(
                    "Weekly Goals",
                    style: TextStyle(
                        fontFamily: "arial",
                        fontSize: 21,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    width: 245,
                    height: 80,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text('Task 1',
                              style: TextStyle(
                                  fontFamily: "arial",
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20, left: 110),
                          child: Column(
                            children: [
                              Text('70',
                                  style: TextStyle(
                                      fontFamily: "arial",
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                              Text('points',
                                  style: TextStyle(
                                    fontFamily: "arial",
                                    fontSize: 14,
                                    color: Colors.black,
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(top: 25)),
                Container(
                  width: 245,
                  height: 80,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text('Task 2',
                            style: TextStyle(
                                fontFamily: "arial",
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20, left: 110),
                        child: Column(
                          children: [
                            Text('50',
                                style: TextStyle(
                                    fontFamily: "arial",
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                            Text('points',
                                style: TextStyle(
                                  fontFamily: "arial",
                                  fontSize: 14,
                                  color: Colors.black,
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ]),
            ),
          ),
          Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ElevatedButton(
                        onPressed: () {
                          
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF7E30E1),
                            fixedSize: const Size(320, 50)),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 50),
                          child: Row(
                            children: [
                              Text(
                                'Move for Evaluation',
                                style: TextStyle(fontSize: 17, color: Colors.white),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 30),
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                  size: 24,
                                ),
                              ),
                            ],
                          ),
                        ),
                                  ),
                  ),
              )
        ]),
      ),
    );
  }
}
