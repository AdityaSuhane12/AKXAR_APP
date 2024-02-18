import 'package:akxar_app/dailytaskpage/dailytaskpage.dart';
import 'package:flutter/material.dart';

class ScorePage extends StatefulWidget {
  const ScorePage({super.key});

  @override
  State<ScorePage> createState() => _ScorePageState();
}

class _ScorePageState extends State<ScorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(30.0), // Set the height here
        child: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: const Color(0xFF7E30E1),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
        ),
       ),
      body: Padding(
        padding: const EdgeInsetsDirectional.only(top: 15, start: 42),
        child: Stack(children: [
          Padding(
            padding: const EdgeInsets.only(top: 280),
            child: Container(
              width: 310,
              height: 305,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 221, 126, 224),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child: ListView(
                padding: const EdgeInsets.only(top: 110.0, right: 15),
                children: const [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 8, right: 18 ,left:8),
                        child: CircleIcon(
                            icon: Icons.star, text: 'Expert\nGuidance'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10, right: 20 ,left:15),
                        child: CircleIcon(
                            icon: Icons.access_alarm, text: 'Icon 2'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10,left:18),
                        child:
                            CircleIcon(icon: Icons.access_time, text: 'Icon 3'),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.all(2)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 18,left: 5),
                        child: CircleIcon(
                            icon: Icons.local_hospital_sharp,
                            text: 'Find\nNeurologist'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 22, right: 32 ,left: 13),
                        child: CircleIcon(icon: Icons.help, text: 'Help'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 22, right: 3,left:10),
                        child: CircleIcon(
                            icon: Icons.share_rounded, text: 'Share'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 310,
            height: 320,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color(0xFF7E30E1),
            ),
            child: CustomPaint(
              painter: ScorePainter(),
              child: const SizedBox(),
            ),
          ),
           Padding(
              padding: const EdgeInsets.only(right: 20, top: 255 ,left: 10),
              child: Container(
                width: 290,
                height: 128,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: CustomPaint(
                  painter: DividerPainter(),
                  child: const SizedBox(),
                ),
              ),
            ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 580, right: 30),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DailyTaskPage()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF7E30E1),
                      fixedSize: const Size(290, 50)),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Row(
                      children: [
                        Text(
                          'Mark for Evaluation',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 28),
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 24,
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
          )
        ]),
      ),
    );
  }
}

class ScorePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const double strokeWidth = 60.0;
    final double radius = size.width / 2 - strokeWidth;

    // Draw the outer circle with glow effect
    final outerGlowPaint = Paint()
      ..color = Color.fromARGB(255, 253, 159, 239)
      ..style = PaintingStyle.fill
      ..maskFilter = const MaskFilter.blur(BlurStyle.inner, 2.0);
    canvas.drawCircle(
        Offset(size.width / 2, (size.height / 2) - 20), radius, outerGlowPaint);

    // Draw the inner circle with glow effect
    final innerGlowPaint = Paint()
      ..color = Color.fromARGB(255, 253, 206, 244)
      ..style = PaintingStyle.fill
      ..maskFilter = const MaskFilter.blur(BlurStyle.inner, 2.0);
    canvas.drawCircle(Offset(size.width / 2, (size.height / 2) - 20),
        radius / 1.3, innerGlowPaint);

    // Draw the innermost circle with glow effect
    final innermostGlowPaint = Paint()
      ..color = const Color.fromARGB(255, 254, 254, 255)
      ..style = PaintingStyle.fill
      ..maskFilter = const MaskFilter.blur(BlurStyle.inner, 2.0);
    canvas.drawCircle(Offset(size.width / 2, (size.height / 2) - 20),
        radius / 1.7, innermostGlowPaint);

    // Draw the "Your Score" text
    const textStyle = TextStyle(
        color: Color(0xFF7E30E1), fontSize: 20, fontWeight: FontWeight.w400);
    const textSpan = TextSpan(text: 'Your Score', style: textStyle);
    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    );
    textPainter.layout();
    final textX = (size.width - textPainter.width) / 2;
    final textY = (size.height - textPainter.height) / 2;
    textPainter.paint(canvas, Offset(textX, textY - 36));

    // Draw the score text
    const scoreTextStyle = TextStyle(
        color: Color(0xFF7E30E1), fontSize: 34, fontWeight: FontWeight.bold);
    const scoreTextSpan = TextSpan(text: '200', style: scoreTextStyle);
    final scoreTextPainter = TextPainter(
      text: scoreTextSpan,
      textDirection: TextDirection.ltr,
    );
    scoreTextPainter.layout();
    final scoreTextX = (size.width - scoreTextPainter.width) / 2;
    final scoreTextY =
        textY + textPainter.height + 20; // Position below the "Your Score" text
    scoreTextPainter.paint(canvas, Offset(scoreTextX, scoreTextY - 45));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class DividerPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color.fromARGB(249, 142, 139, 139)
      ..strokeWidth = 0.5
      ..strokeCap = StrokeCap.round;

    // Draw vertical lines to divide the rectangle into four parts
    final double divisionWidth = (size.width / 2);
    canvas.drawLine(
      Offset(divisionWidth + 3, 10),
      Offset(divisionWidth + 3, size.height - 10),
      paint,
    );

    // Draw horizontal lines to divide the rectangle into four parts
    final double divisionHeight = size.height / 2;
    canvas.drawLine(
      Offset(10, divisionHeight),
      Offset(size.width - 10, divisionHeight),
      paint,
    );

    // Define text styles
    const numberStyle = TextStyle(
      color: Color(0xFF7E30E1),
      fontSize: 18,
      fontWeight: FontWeight.bold,
    );

    const textStyle = TextStyle(
      color: Colors.black,
      fontSize: 16,
      fontWeight: FontWeight.normal,
    );

    // Top-left space
    TextPainter(
      text: const TextSpan(text: '50', style: numberStyle),
      textDirection: TextDirection.ltr,
    )
      ..layout(minWidth: 0, maxWidth: size.width / 2)
      ..paint(canvas, const Offset(15, 12));

    TextPainter(
      text: const TextSpan(text: 'Word Recognition', style: textStyle),
      textDirection: TextDirection.ltr,
    )
      ..layout(minWidth: 0, maxWidth: size.width / 2)
      ..paint(canvas, const Offset(15, 35)); // Adjust the Y offset as needed

    // Top-right space
    TextPainter(
      text: const TextSpan(text: '50', style: numberStyle),
      textDirection: TextDirection.ltr,
    )
      ..layout(minWidth: 0, maxWidth: size.width / 2)
      ..paint(canvas, Offset((size.width / 2) + 15, 12));

    TextPainter(
      text: const TextSpan(text: 'Decoding', style: textStyle),
      textDirection: TextDirection.ltr,
    )
      ..layout(minWidth: 0, maxWidth: size.width / 2)
      ..paint(canvas,
          Offset((size.width / 2) + 15, 35)); // Adjust the Y offset as needed

    // Bottom-left space
    TextPainter(
      text: const TextSpan(text: '50', style: numberStyle),
      textDirection: TextDirection.ltr,
    )
      ..layout(minWidth: 0, maxWidth: size.width / 2)
      ..paint(canvas, Offset(15, (size.height / 2) + 10));

    TextPainter(
      text: const TextSpan(text: 'Phonological', style: textStyle),
      textDirection: TextDirection.ltr,
    )
      ..layout(minWidth: 0, maxWidth: size.width / 2)
      ..paint(canvas,
          Offset(15, (size.height / 2) + 33)); // Adjust the Y offset as needed

    // Bottom-right space
    TextPainter(
      text: const TextSpan(text: '50', style: numberStyle),
      textDirection: TextDirection.ltr,
    )
      ..layout(minWidth: 0, maxWidth: size.width / 2)
      ..paint(canvas, Offset((size.width / 2) + 15, (size.height / 2) + 10));

    TextPainter(
      text: const TextSpan(text: 'Spelling', style: textStyle),
      textDirection: TextDirection.ltr,
    )
      ..layout(minWidth: 0, maxWidth: size.width / 2)
      ..paint(
          canvas,
          Offset((size.width / 2) + 15,
              (size.height / 2) + 33)); // Adjust the Y offset as needed
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class CircleIcon extends StatelessWidget {
  final IconData icon;
  final String text;

  const CircleIcon({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromARGB(255, 235, 236, 237),
            // Change color as needed
          ),
          child: Icon(
            icon,
            color: const Color(0xFF7E30E1),
          ),
        ),
        const Padding(padding: EdgeInsets.only(top: 3)),
        Text(
          text,
          style: const TextStyle(fontSize: 14),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
