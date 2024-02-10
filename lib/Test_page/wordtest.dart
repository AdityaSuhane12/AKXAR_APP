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