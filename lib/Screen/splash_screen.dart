import 'dart:async';

import 'package:flutter/material.dart';
import 'package:foodpanda_uiclone/Screen/auth_screen.dart';
import 'package:foodpanda_uiclone/Screen/location_screen.dart';
import 'package:foodpanda_uiclone/Utils/custom_color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


@override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, 
      MaterialPageRoute(builder:(context) => LocationScreen(),));
    },);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor().primaryColor,
      body: Center(child: Image.asset("assets/Image/download (4).png",
      color: Colors.white,height: 180,width: 180,),),
    );
  }
}