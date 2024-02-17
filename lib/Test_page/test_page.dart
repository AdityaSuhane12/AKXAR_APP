import 'package:akxar_app/Test_page/decodingtest.dart';
import 'package:akxar_app/Test_page/phonologicaltest.dart';
import 'package:akxar_app/Test_page/spelling.dart';
import 'package:flutter/material.dart';
import 'package:akxar_app/Test_page/wordtest.dart';


class TestPage extends StatefulWidget {
List<bool> testCompletion = [false, false, false, false];
  TestPage({Key? key ,required this.testCompletion}) : super(key: key);

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> { 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF7E30E1),
         shape:const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
        ),
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
                  testCompletion: widget.testCompletion,
                ),
                const SizedBox(width: 50),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    for (int i = 0; i < widget.testCompletion.length; i++)
                      ElevatedButton(
                        onPressed: () {
                          bool canOpenTest = true;

                          // Check if previous tests are completed before opening the current one
                          for (int j = 0; j < i; j++) {
                            if (!widget.testCompletion[j]) {
                              canOpenTest = false;
                              break;
                            }
                          }

                          // Navigate to the test page if conditions are met
                          if (canOpenTest) {
                            if (i == 0) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const WordPage()),
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
                             widget.testCompletion[i] = true;
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
      child: completed ? const Icon(Icons.done, color: Colors.white) : null,
    );
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
