import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
         appBar: AppBar(
         automaticallyImplyLeading: false,
       backgroundColor: const Color(0xFF7E30E1),
        shape: CustomShapeBorder(),
         ),
    );
  }
}
class CustomShapeBorder extends ContinuousRectangleBorder {
  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    const double radius = 49.0;
    final Path path = Path()
      ..moveTo(rect.left, rect.top)
      ..lineTo(rect.bottomLeft.dx, rect.bottomLeft.dy - radius)
      ..quadraticBezierTo(rect.bottomLeft.dx, rect.bottomLeft.dy,
          rect.bottomLeft.dx + radius, rect.bottomLeft.dy)
      ..lineTo(rect.bottomRight.dx - radius, rect.bottomRight.dy)
      ..quadraticBezierTo(rect.bottomRight.dx, rect.bottomRight.dy,
          rect.bottomRight.dx, rect.bottomRight.dy - radius)
      ..lineTo(rect.right, rect.top)
      ..close();
    return path;
  }
}

