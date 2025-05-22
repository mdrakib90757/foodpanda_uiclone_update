import 'package:flutter/material.dart';
import 'package:foodpanda_uiclone/Screen/home_screen.dart';
import 'package:foodpanda_uiclone/Utils/custom_color.dart';

class StartedScreen extends StatefulWidget {
  const StartedScreen({super.key});

  @override
  State<StartedScreen> createState() => _StartedScreenState();
}

class _StartedScreenState extends State<StartedScreen> {
  bool CurrentIndex= true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back,color: AppColor().primaryColor,)),
      
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextButton(onPressed: 
            () {
              
            }, child: Text("Complete",style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: AppColor().primaryColor  
            ),),)
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0,top: 40,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.pinkAccent.shade200,
                child: Image.asset("assets/Image/user.png",
                color: Colors.white,
                height: 40,
                width: 40,
                )
              ),
              Positioned(
                left: 40,
                top: 40,
                child: Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black
                  ),
                  child: Icon(Icons.add,color: Colors.white,),
                ),
              )
              ]
            ),
          ),
          SizedBox(height: 30,),
            Text("Let’s get you started!",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500
            ),
            ),
            SizedBox(height: 10,),
            Text("First, help us create your foodpanda accountThen you\ncan enjoy faster checkout and order tracking.",
            style: TextStyle(
              color: Colors.black54,
              fontSize: 12,
              fontWeight: FontWeight.w500
            ),
            ),
            SizedBox(height: 20,),
          //firstname lastname row
            Row(
              children: [
                Container(
                  height: 50,
                  width: 200,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: AppColor().primaryColor)
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color:Colors.grey)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: AppColor().primaryColor)
                      ),
                       labelText: "First Name",
                labelStyle: TextStyle(
                  fontSize: 12
                ),
                    ),
                  ),
                ),
                SizedBox(width: 8,),
                Container(
                  height: 50,
                  width: 200,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: AppColor().primaryColor)
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color:Colors.grey)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: AppColor().primaryColor)
                      ),
                       labelText: "Last Name",
                labelStyle: TextStyle(
                  fontSize: 12
                ),
                    ),
                  ),
                )

              ],
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

          Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:0,vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                       onTap: () {
                          Navigator.push(context, 
                          MaterialPageRoute(builder: (context) =>HomeScreen() ,));
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