import 'package:akxar_app/profiledescription/profile_description.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class IntialPage extends StatefulWidget {
  const IntialPage({super.key});

  @override
  State<IntialPage> createState() => _IntialPageState();
}

class _IntialPageState extends State<IntialPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User? _user;
  @override
  void initState() {
    super.initState();
    _auth.authStateChanges().listen((event) {
      setState(() {
        _user = event;
      });
    });
  }

  void _handleGoogleSignIn() {
    try {
      GoogleAuthProvider googleAuthProvider = GoogleAuthProvider();
      _auth.signInWithProvider(googleAuthProvider);
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const ProfilePage(),
        ),
      );
    } catch (error) {
      print(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF7E30E1),
        shape:const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
        ),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              const ParagraphLine(
                  text: "In the digital realm it seeks,finding paths to"),
              const ParagraphLine(text: " guide the way ,"),
              const ParagraphLine(
                  text: "With each gentle touch and click, brighter"),
              const ParagraphLine(text: " shines the day."),
              // Add some space between text and image
              Container(
                width: 275, // Adjust the width as needed
                height: 275,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/img_logo.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Align(
                child: Center(
                    child: Text(
                  'Nurturing minds, illuminating futures',
                  style: TextStyle(fontSize: 16, fontFamily: 'ARIAL'),
                )),
              ),
              const SizedBox(
                height: 30,
              ),
              _user != null ? _userInfo() : _googleSignInButton(),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.black,
                        height: 36,
                        thickness: 2,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        "or",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.black,
                        thickness: 2,
                        height: 36,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: SizedBox(
                  height: 50,
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigate to the other page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProfilePage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(20.0), // Rounded corners
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text(
                        'Login as a Guest',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ),
            ]),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Color(0xFF7E30E1), // Background color
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        height: 50.0,
        child: const Center(
          child: Text(
            'Created by Samaadhan',
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
        ),
      ),
    );
  }

  Widget _googleSignInButton() {
    return Center(
      child: SizedBox(
        height: 50,
        width: 300,
        child: ElevatedButton(
          onPressed: _handleGoogleSignIn,
          style: ElevatedButton.styleFrom(
            backgroundColor:
                const Color(0xFF7E30E1), // Set the background color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/img_google_logo.png', // Replace with your Google logo image asset
                height: 24,
                width: 24,
              ),
              const SizedBox(
                  width: 10), // Add some space between image and text
              const Text(
                "Sign up with Google",
                style: TextStyle(
                  color: Colors.black, // Set the text color
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _userInfo() {
    return Center(
      child: SizedBox(
        height: 50,
        width: 300,
        child: ElevatedButton(
          onPressed: _auth.signOut,
          style: ElevatedButton.styleFrom(
            backgroundColor:
                const Color(0xFF7E30E1), // Set the background color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/img_google_logo.png', // Replace with your Google logo image asset
                height: 24,
                width: 24,
              ),
              const SizedBox(
                  width: 10), // Add some space between image and text
              const Text(
                "Sign Out",
                style: TextStyle(
                  color: Colors.black, // Set the text color
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class ParagraphLine extends StatelessWidget {
  final String text;

  const ParagraphLine({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 16, fontFamily: 'ARIAL'),
    );
  }
}
