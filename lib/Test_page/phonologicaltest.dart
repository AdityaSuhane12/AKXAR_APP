import 'package:flutter/material.dart';

class PhonologicalPage extends StatefulWidget {
  const PhonologicalPage({Key? key}) : super(key: key);

  @override
  State<PhonologicalPage> createState() => _PhonologicalPageState();
}

class _PhonologicalPageState extends State<PhonologicalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF7E30E1),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
        ),
      ),
    );
  }
}
