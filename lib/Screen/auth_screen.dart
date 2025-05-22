import 'package:flutter/material.dart';
import 'package:foodpanda_uiclone/Screen/login_email.dart';
import 'package:foodpanda_uiclone/Utils/custom_color.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      backgroundColor: AppColor().primaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 30),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back,size: 25,color:Colors.white)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150,right: 70),
            child: Center(
              child: Image.asset("assets/Image/panda.png",fit:BoxFit.cover,
              height: 300,
              width: 300,
              ),
            ),
          ),
          SizedBox(height: 20,),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20)
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.
                symmetric(horizontal: 20,vertical: 20),
                child: Column(   
                  crossAxisAlignment: CrossAxisAlignment.start,          
                  children: [
                    Text("Sign up or Login",style: TextStyle(
                      color: Colors.black,
                      fontSize: 19.0,
                      fontWeight:FontWeight.bold
                    ),),
                     Text("Select yourr Preferred Method to continue",style: TextStyle(
                      color: Colors.black,
                      fontSize: 15
                    ),),
                    SizedBox(height: 30,),
                    Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8),               
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                         spacing: 80,
                          children: [
                            Image.asset("assets/Image/google.png",
                            height: 30,width: 30,),
                            
                            Text("Continue with Google",style:TextStyle(
                            color: Colors.grey.shade500,
                            fontSize: 17,                    
                            fontWeight: FontWeight.bold
                                                    ),)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(         
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8),               
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          spacing: 80,
                          children: [
                            Image.asset("assets/Image/facebook.png",
                            height: 30,width: 30,),                         
                            Text("Continue with Facebook",style:TextStyle(
                            color: Colors.white,
                            fontSize: 16,                                                
                            fontWeight: FontWeight.bold,
                            ),)
                          ],
                        ),
                      ),
                    ),
                     SizedBox(height: 10,),
                   Row(
                    children: [
                       Expanded(
                         child: Divider(
                          color: Colors.grey.shade400,
                          thickness: 1.3,
                          ),
                       ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text("or",style: TextStyle(
                        color: Colors.black
                      ),),
                    ),
                     Expanded(
                       child: Divider(
                       color: Colors.grey.shade400,
                        thickness: 1.3,
                        ),
                     ),
                    ],
                   ),
                   SizedBox(height: 20,),
                       InkWell(
                        onTap: () {
                          Navigator.push(context, 
                          MaterialPageRoute(builder: (context) =>LoginEmail() ,));
                        },
                         child: Container(
                          alignment: Alignment.center,
                                               height: 60,
                                               width: double.infinity,
                                               decoration: BoxDecoration(
                          color:Colors.white,
                          border: Border.all(color: AppColor().primaryColor),
                          borderRadius: BorderRadius.circular(8),               
                                               ),
                                               child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            spacing: 80, 
                            children: [
                              Image.asset("assets/Image/gmail.png",
                              height: 30,width: 30,),
                              Text("Continue with Email",style:TextStyle(
                              color: AppColor().primaryColor,
                              fontSize: 17,                                                
                              fontWeight: FontWeight.bold,                                                       ),)
                            ],
                          ),
                                               ),
                                             ),
                       ),
                  
                  
                  
                  
                  
                    
                          
                  ],
                ),
              ),
            ),
          )
      
        ],
      ),
    );
  }
}