import 'package:flutter/material.dart';

class DecodingPage extends StatefulWidget {
  const DecodingPage({super.key});

  @override
  State<DecodingPage> createState() => _DecodingPageState();
}

class _DecodingPageState extends State<DecodingPage> {
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