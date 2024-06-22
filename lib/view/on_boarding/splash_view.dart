import 'package:flutter/material.dart';
import 'package:food_delivery_meal/view/login/welcome_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    goWelcomePage();
  }

  void goWelcomePage() async {
    await Future.delayed(const Duration(seconds: 2));
    welcomePage();
  }

  void welcomePage() async {
   Navigator.push(
        context, MaterialPageRoute(builder: (context) =>const WelcomeView()));
    
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/img/splash_bg.png',
            height: media.height,
            width: media.width,
            fit: BoxFit.cover,
          ),
          Image.asset(
            'assets/img/app_logo.png',
            height: media.height * 0.7,
            width: media.width * 0.7,
            fit: BoxFit.contain,
          )
        ],
      ),
    );
  }
}
