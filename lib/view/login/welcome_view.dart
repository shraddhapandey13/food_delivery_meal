import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery_meal/common/color_extension.dart';
import 'package:food_delivery_meal/common_widget/rounded_button.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset(
                'assets/img/welcome_top_shape.png',
                width: media.width,
              ),
              Image.asset(
                'assets/img/app_logo.png',
                height: media.height * 0.23,
                width: media.width * 0.55,
                fit: BoxFit.contain,
              ),
            ],
          ),
          SizedBox(height: media.height * 0.04),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              textAlign: TextAlign.center,
              'Discover the best foods  from over 1,000 \nrestaurant and fast delivery to \nyour doorstep',
              style: TextStyle(
                color: TColor.secondaryText,
                fontWeight: FontWeight.w500,
                fontSize: 13,
              ),
            ),
          ),
          SizedBox(height: media.height * 0.04),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: RoundedButton(
              type: RoundedButtonType.bgPrimary,
              title: 'Login',
              onPressed: () {},
            ),
          ),
          SizedBox(height: media.width * 0.09),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: RoundedButton(
              title: 'Created An Account',
              type: RoundedButtonType.textPrimary,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
