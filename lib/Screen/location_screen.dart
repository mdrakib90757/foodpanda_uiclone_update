import 'package:flutter/material.dart';
import 'package:foodpanda_uiclone/Screen/auth_screen.dart';

import 'package:foodpanda_uiclone/Utils/custom_color.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 80,left: 30,right: 30),
        child: Column(
           children: [
            Center(
              child: Image.asset("assets/Image/location.png",
              height: 250,
              width: 250,
             // color: AppColor().primaryColor,
              ),
            ),
         SizedBox(height: 50,),
            Text("Allow location access on the next screen for:",
            style: TextStyle(
             color: Colors.black,
             fontWeight: FontWeight.bold,
             fontSize: 23
            ),
            ),
            SizedBox(
             height: 30,
            ),
            Row(
             children: [
               CircleAvatar(
                 child: Image.asset("assets/Image/delivery.png",
                 height: 40,width: 40,
                 color: AppColor().primaryColor,
                 ),
                 radius: 25,
                 backgroundColor: Colors.pink.shade100,
               ),
               SizedBox(width: 10,),
               Text("Finding the best restaurants\nand shops near you.",
               style: TextStyle(
             color: Colors.grey.shade700,
             fontWeight: FontWeight.bold,
             fontSize: 16
            ),
               )
             ],
            ),
           SizedBox(height: 20,),
            Row(
             children: [
               CircleAvatar(
                 child: Image.asset("assets/Image/restaurant.png",
                 height: 40,width: 40,
                 color: AppColor().primaryColor,
                 ),
                 radius: 25,
                 backgroundColor: Colors.pink.shade100,
               ),
               SizedBox(width: 10,),
               Text("Faster and more accurate delivery",
               style: TextStyle(
             color: Colors.grey.shade700,
             fontWeight: FontWeight.bold,
             fontSize: 16
            ),
               )
             ],
            ),
           Expanded(
               child: Padding(
                 padding: const EdgeInsets.symmetric(horizontal:0,vertical: 10),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                     InkWell(
                       onTap: () {
                         Navigator.push(context,
                         MaterialPageRoute(builder: (context) => AuthScreen(),));
                       },
                       child: Container(
                         padding: EdgeInsets.all(10),
                         height: 50,
                         width: double.infinity,
                         decoration: BoxDecoration(
                           color: AppColor().primaryColor,
                           borderRadius: BorderRadius.circular(20)
                         ),
                         child: Center(
                           child: Text("Continue",style: TextStyle(
                                         color: Colors.white,
                                         fontSize: 19,
                                         fontWeight: FontWeight.w500
                                       ),),
                         ),
                       ),
                     ),
                   ],
                 ),
               ),
             )
         
         
         
         
           ]
         
             ),
      ));
  }
}