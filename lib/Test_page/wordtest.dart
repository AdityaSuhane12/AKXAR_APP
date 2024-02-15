import 'package:flutter/material.dart';

class wordPage extends StatefulWidget {
  const wordPage({super.key});

  @override
  State<wordPage> createState() => _wordPageState();
}

class _wordPageState extends State<wordPage> {
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
      body: Center(
        child: Container(
          width: 380,
          height: 500,
          decoration: const BoxDecoration(  borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ), color:  Color(0xFF7E30E1)),
          child: const Column(

            children: [ SizedBox(height: 20,),
              Text("Which letter corresponds to the sound 'e'?",style: TextStyle(
                fontFamily: 'arial',color: Colors.white ,fontSize: 20
              ),textAlign: TextAlign.center,),
            ]),
        ),
      ),
    );
  }
}