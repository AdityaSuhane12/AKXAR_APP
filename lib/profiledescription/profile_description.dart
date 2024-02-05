import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF7E30E1),
        shape: CustomShapeBorder(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'assets/images/img_logo.png', // Replace with your actual image path
                width: 200,
                height: 200,
              ),
            ),
            Container(
              height: 250,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFF7E30E1),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    'Select Your Age',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      _button(),
                      const SizedBox(
                        height: 20,
                      ),
                      _button2(),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 110,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color:  const Color(0xFF7E30E1),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Select Your Grade / Standard',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Enter grade',
                              hintStyle: TextStyle(color: Colors.white),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                            ),
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              width: 300,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF7E30E1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child:  const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [SizedBox(width: 20,),
                    Text('Save', style: TextStyle(color: Colors.white, fontSize: 17)),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _button() {
    return Row(
      children: [
        const SizedBox(width: 35),
        SizedBox(
          height: 70,
          width: 100,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 245, 75, 217),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                // Adjust the value for rounded corners
              ),
            ),
            child: const Text(
              "Years\n3 - 6",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(width: 35),
        SizedBox(
          height: 70,
          width: 100,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 245, 75, 217),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                // Adjust the value for rounded corners
              ),
            ),
            child: const Text(
              "Years\n7 - 10",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }

  Widget _button2() {
    return Row(
      children: [
        const SizedBox(width: 35),
        SizedBox(
          height: 70,
          width: 100,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 245, 75, 217),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                // Adjust the value for rounded corners
              ),
            ),
            child: const Text(
              "Years\n10 -13 ",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(width: 35),
        SizedBox(
          height: 70,
          width: 100,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 245, 75, 217),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                // Adjust the value for rounded corners
              ),
            ),
            child: const Text(
              "Years\n13 - 16",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
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
