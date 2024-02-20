import 'package:akxar_app/dailytaskpage/dailytaskpage.dart';
import 'package:flutter/material.dart';

class Task1 extends StatefulWidget {
  const Task1({super.key});

  @override
  State<Task1> createState() => _Task1State();
}

class _Task1State extends State<Task1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
        PreferredSize(
        preferredSize: const Size.fromHeight(30.0), // Set the height here
        child: AppBar(
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
       const  Padding(
          padding: EdgeInsets.only(top: 20),
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
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Container(
            width: 300,
            height: 250,
            decoration: const BoxDecoration(
              color: Color(0xFF7E30E1),
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
            child: const Padding(
              padding:  EdgeInsets.only(top: 10),
              child:  Column(
                children: [
                  Text(
                            "Task Name",
                            style: TextStyle(
                                fontFamily: "arial",
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,letterSpacing: 3),
                            textAlign: TextAlign.center,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Text(
                              "Task Description",
                              style: TextStyle(
                                  fontFamily: "arial",
                                  fontSize: 16,
                                  color: Colors.white,),
                              textAlign: TextAlign.center,
                            ),
                          ),
                ],
              ),
            ),
          ),
        ),
         Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 290),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const DailyTaskPage()));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF7E30E1),
                          fixedSize: const Size(300, 50)),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 50),
                        child: Row(
                          children: [
                            Text(
                              'Mark as Completed',
                              style: TextStyle(fontSize: 17, color: Colors.white),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20),
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

    );
  }
}