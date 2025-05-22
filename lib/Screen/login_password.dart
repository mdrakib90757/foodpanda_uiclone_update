import 'package:flutter/material.dart';
import 'package:foodpanda_uiclone/Screen/verify_screen.dart';
import 'package:foodpanda_uiclone/Utils/custom_color.dart';

class LoginPassword extends StatefulWidget {
  const LoginPassword({super.key});

  @override
  State<LoginPassword> createState() => _LoginEmailState();
}

class _LoginEmailState extends State<LoginPassword> {

bool CurrentIndex=true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.only(left: 15.0,top: 30,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back,size: 25,color:AppColor().primaryColor)),
          SizedBox(height: 20,),
            Image.asset("assets/Image/mail.png",
            height: 50,
            width: 50,
            color: AppColor().primaryColor,
            fit: BoxFit.cover,),
            SizedBox(height: 20,),
            Text("Log in with your email",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500
            ),
            ),
            SizedBox(height: 10,),
            Text("Log in with your personal email to get started.",
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
                labelText: "Password",
                labelStyle: TextStyle(
                  fontSize: 12
                ),
                suffixIcon:IconButton(onPressed: () {
                  setState(() {
                    CurrentIndex=!CurrentIndex;

                  });
                }, icon:  Icon(CurrentIndex?Icons.visibility_off:Icons.visibility,
                color: CurrentIndex?Colors.grey:Colors.pinkAccent
                ))
                
              ),
              obscureText: CurrentIndex,
              obscuringCharacter: "*",
            ),
            SizedBox(height: 15,),
          Text("Forget Password?",style: 
          TextStyle(
            color: AppColor().primaryColor,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:0,vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColor().primaryColor,
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Center(
                        child: Text("Log in with Facebook",style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500
                                    ),),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:0,vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                     onTap: () {
                          Navigator.push(context, 
                          MaterialPageRoute(builder: (context) =>VerifyScreen() ,));
                        },
                    child: Container(
                      padding: EdgeInsets.all(5),
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                       border: Border.all(color: AppColor().primaryColor),
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Center(
                        child: Text("Send me a login link",style: TextStyle(
                                      color:AppColor().primaryColor,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500
                                    ),),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}