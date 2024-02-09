import 'package:flutter/material.dart';
import 'package:akxar_app/backgroundpage/background.dart';

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
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int? _selectedGrade;
  double _selectedAge = 3;

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
                      Slider(
                        value: _selectedAge,
                        min: 3,
                        max: 16,
                        divisions: 13,
                        label: _selectedAge.toString(),
                        onChanged: (value) {
                          setState(() {
                            _selectedAge = value;
                          });
                        },
                      ),
                      Text(
                        'Selected Age: ${_selectedAge.toInt()}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 10,),
                    ClipOval(
  child: SizedBox(
    width: 125,
    height: 95,
    child: Image.asset('assets/images/profile.png'),
  ),
)
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
                color: const Color(0xFF7E30E1),
              ),
              child: Center(
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
                      child: Row(
                        children: [
                          Expanded(
                            child: DropdownButtonFormField<int>(
                              decoration: const InputDecoration(
                                hintText: 'Select grade',
                                hintStyle: TextStyle(color: Colors.white),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                              ),
                              style: const TextStyle(color: Colors.white), // Change font color to white
                              iconEnabledColor: Colors.white, // Change icon color to white
                              dropdownColor:  const Color(0xFF7E30E1), // Change dropdown background color to purple
                              value: _selectedGrade,
                              onChanged: (newValue) {
                                setState(() {
                                  _selectedGrade = newValue!;
                                });
                              },
                              items: List.generate(12, (index) => index + 1)
                                  .map<DropdownMenuItem<int>>((int value) {
                                return DropdownMenuItem<int>(
                                  value: value,
                                  child: Text(
                                    value.toString(),
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const QuizPage()),
                      );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF7E30E1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text('Save',
                        style: TextStyle(color: Colors.white, fontSize: 17)),
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
