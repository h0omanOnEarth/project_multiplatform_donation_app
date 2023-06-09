import 'dart:async';
import 'package:flutter/material.dart';
import 'package:donaterly_app/menu_page_screen.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/splash_screen_route';

  const SplashScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final double _opacityLevel = 1.0;

  @override
  void initState() {
    super.initState();
    // Timer untuk mengatur waktu tampilan SplashScreen
    Timer(const Duration(seconds: 3), () {
      // Navigasi ke halaman berikutnya setelah 3 detik
      Navigator.pushNamed(context, MenuScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Desain tampilan SplashScreen
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: AnimatedOpacity(
          opacity: _opacityLevel,
          duration: const Duration(seconds: 2),
          curve: Curves.easeInOut,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(20.0),
                  child: Image.asset('images/logo.jpg'),
                ),
              ),
              const SizedBox(height: 24),
              // const CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  ));
}
