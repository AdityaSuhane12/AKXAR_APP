import 'package:akxar_app/Test_page/decodingtest.dart';
import 'package:akxar_app/Test_page/phonologicaltest.dart';
import 'package:akxar_app/Test_page/spelling.dart';
import 'package:flutter/material.dart';
import 'package:akxar_app/Test_page/wordtest.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  List<bool> testCompletion = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF7E30E1),
        shape: const CustomShapeBorder(),
      ),
      body: Stack(
        children: [
          // Background logo
          Center(
            child: Image.asset(
              'assets/images/img_background_logo.png',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TimelineWidget(
                  testCompletion: testCompletion,
                ),
                const SizedBox(width: 50),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    for (int i = 0; i < testCompletion.length; i++)
                      ElevatedButton(
                        onPressed: () {
                          bool canOpenTest = true;

                          // Check if previous tests are completed before opening the current one
                          for (int j = 0; j < i; j++) {
                            if (!testCompletion[j]) {
                              canOpenTest = false;
                              break;
                            }
                          }

                          // Navigate to the test page if conditions are met
                          if (canOpenTest) {
                            if (i == 0) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const wordPage()),
                              );
                            } else if (i == 1) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const DecodingPage()),
                              );
                            } else if (i == 2) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const PhonologicalPage()),
                              );
                            } else if (i == 3) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const SpellingPage()),
                              );
                            }
                          }
                          // Update the completion status
                          setState(() {
                            if (canOpenTest) {
                              testCompletion[i] = true;
                            }
                          });
                        },
                        child: Text('Test Paper ${i + 1}'),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TimelineWidget extends StatelessWidget {
  final List<bool> testCompletion;

  const TimelineWidget({required this.testCompletion});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < testCompletion.length; i++)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _TimelineDot(completed: testCompletion[i]),
              if (i < testCompletion.length - 1)
                const SizedBox(
                  height: 5,
                ),
              SizedBox(
                width: 20,
                height: 160,
                child: CustomPaint(
                  painter: LinePainter(),
                ),
              ),
            ],
          ),
      ],
    );
  }
}

class _TimelineDot extends StatelessWidget {
  final bool completed;

  const _TimelineDot({required this.completed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: completed ? const Color(0xFF7E30E1) : Colors.grey,
      ),
      child: completed ? Icon(Icons.done, color: Colors.white) : null,
    );
  }
}

class CustomShapeBorder extends ContinuousRectangleBorder {
  const CustomShapeBorder();

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

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFF7E30E1)
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;

    final startPoint = Offset(size.width / 2, 0);
    final endPoint = Offset(size.width / 2, size.height);

    canvas.drawLine(startPoint, endPoint, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
