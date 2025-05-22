import 'package:flutter/material.dart';
import 'package:foodpanda_uiclone/Screen/login_password.dart';
import 'package:foodpanda_uiclone/Utils/custom_color.dart';

class LoginEmail extends StatefulWidget {
  const LoginEmail({super.key});

  @override
  State<LoginEmail> createState() => _LoginEmailState();
}

class _LoginEmailState extends State<LoginEmail> {
  bool CurrentIndex=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.only(left: 15,top: 30,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back,size: 25,color: AppColor().primaryColor,)),
            SizedBox(height: 20,),
            Text("Whats Your email?",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500
            ),
            ),
            SizedBox(height: 10,),
            Text("We’ll check if you have an account",
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.w500
            ),
            ),
            SizedBox(height: 20,),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.grey)
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.grey)
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: AppColor().primaryColor,width: 2)
                ),
                labelText: "Email",
                labelStyle: TextStyle(
                  fontSize: 12
                ),
                
              ),
              obscureText: CurrentIndex,
              obscuringCharacter: "*",
            ),
            SizedBox(height: 15,),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:0,vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (context) => LoginPassword(),));
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: AppColor().primaryColor,
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: Center(
                          child: Text("Continue",style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500
                                      ),),
                        ),
                      ),
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