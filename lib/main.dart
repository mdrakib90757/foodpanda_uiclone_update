import 'package:flutter/material.dart';
import 'package:foodpanda_uiclone/Screen/Provider/provider_screen.dart';
import 'package:foodpanda_uiclone/Screen/auth_screen.dart';
import 'package:foodpanda_uiclone/Screen/home_screen.dart';
import 'package:foodpanda_uiclone/Screen/location_screen.dart';
import 'package:foodpanda_uiclone/Screen/login_email.dart';
import 'package:foodpanda_uiclone/Screen/login_password.dart';
import 'package:foodpanda_uiclone/Screen/product_screen.dart';
import 'package:foodpanda_uiclone/Screen/shop_screen.dart';
import 'package:foodpanda_uiclone/Screen/splash_screen.dart';
import 'package:foodpanda_uiclone/Screen/started_screen.dart';
import 'package:foodpanda_uiclone/Screen/verify_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => CartProvider(),)

  ],child: MyApp(),),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home:SplashScreen()
    );
  }
}

