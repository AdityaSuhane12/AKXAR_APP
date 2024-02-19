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
      body: Column(children: [
        const Padding(
          padding: EdgeInsets.only(top: 10, bottom: 20),
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
          width: 320,
          height: 100,
          decoration: const BoxDecoration(
              color: Color(0xFF7E30E1),
              borderRadius: BorderRadius.all(Radius.circular(25))),
          child: Column(
            children: [
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 15, left: 20),
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
                        // Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //           builder: (context) => const DailyTaskPage()));
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
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            width: 320,
            height: 100,
            decoration: const BoxDecoration(
                color: Color(0xFF7E30E1),
                borderRadius: BorderRadius.all(Radius.circular(25))),
            child: Column(
              children: [
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 15, left: 20),
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
                          //       context,
                          //       MaterialPageRoute(
                          //           builder: (context) => const DailyTaskPage()));
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
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            width: 320,
            height: 100,
            decoration: const BoxDecoration(
                color: Color(0xFF7E30E1),
                borderRadius: BorderRadius.all(Radius.circular(25))),
            child: Column(
              children: [
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 15, left: 20),
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
                          // Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //           builder: (context) => const DailyTaskPage()));
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
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            width: 320,
            height: 253,
            decoration: BoxDecoration(
                color: Color(0xFF7E30E1),
                borderRadius: BorderRadius.circular(20)),
          ),
        )
      ]),
    );
  }
}
