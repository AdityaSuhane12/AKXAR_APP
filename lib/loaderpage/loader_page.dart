import "package:akxar_app/intialpage/intial_page.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";

class LoaderScreen extends StatefulWidget {
  const LoaderScreen({super.key});

  @override
  State<LoaderScreen> createState() => _LoaderScreenState();
}

class _LoaderScreenState extends State<LoaderScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds: 3 ),() {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (_) => const IntialPage(),
      ));
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.white, Colors.purple],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
          ),
          Center(
            child: Image.asset(
              'assets/images/img_logo.png', // Replace with your actual image path
              width: 300, // Adjust the width as needed
              height: 300,
              // Adjust the height as needed
              // You can also use other properties like fit, alignment, etc.
            ),
          ),
        ],
      ),
    );
  }
}
