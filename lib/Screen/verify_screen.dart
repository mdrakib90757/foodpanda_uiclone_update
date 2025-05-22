
import 'package:flutter/material.dart';
import 'package:foodpanda_uiclone/Screen/started_screen.dart';
import 'package:foodpanda_uiclone/Utils/custom_color.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({super.key});

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30,left: 15.0),
        child: Column(
         // mainAxisAlignment: MainAxisAlignment.spaceBetween,
         crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back,size: 25,color:AppColor().primaryColor)),
          Spacer(),
           Center(
             child: Image.asset("assets/Image/mail.png",
              height: 130,
              width: 130,
              color: AppColor().primaryColor  
             )
           ),
           SizedBox(height: 20,),
            Text("Verify your email address to get started",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500
            ),),
            SizedBox(height: 10,),
            Text("This helps us to recognize it and link you to your personal data",
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.w500
            ),),
            Center(
              child: Text("later",
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.w500
              ),),
            ),
            
            Expanded(
            
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:20,vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                       onTap: () {
                          Navigator.push(context, 
                          MaterialPageRoute(builder: (context) =>StartedScreen() ,));
                        },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: AppColor().primaryColor,
                          borderRadius: BorderRadius.circular(8)
                        ),
                        child: Center(
                          child: Text("Send verification email",style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500
                                      ),),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
        
        
          ],
        ),
      ),










    );
  }
}