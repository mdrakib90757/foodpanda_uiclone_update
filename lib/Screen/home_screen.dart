import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodpanda_uiclone/Screen/shop_screen.dart';
import 'package:foodpanda_uiclone/Utils/custom_color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final List<Map<String, String>> popularItems = [
    {
      "title": "Cricket Deal 2",
      "price": "Rs. 549.00",
      "oldPrice": "Rs. 869.00",
      "image": "assets/cricket_deal_2.jpg"
    },
    {
      "title": "Chicken Fajita",
      "price": "from Rs. 785.00",
      "image": "assets/chicken_fajita.jpg"
    },
    {
      "title": "Chicken Tikka",
      "price": "from Rs. 785.00",
      "image": "assets/chicken_tikka.jpg"
    },
    {
      "title": "Chicken Teriyaki",
      "price": "from Rs. 840.00",
      "image": "assets/chicken_teriyaki.jpg"
    },
    {
      "title": "Roasted Chicken Breast",
      "price": "from Rs. 710.00",
      "image": "assets/roasted_chicken_breast.jpg"
    },
    {
      "title": "Chicken Tikka Salad",
      "price": "from Rs. 845.00",
      "image": "assets/chicken_tikka_salad.png"
    }
  ];                
  final List<Map<String, String>> items = [
    {
      'title': 'Food delivery',
      'subtitle': 'Order food you love',
      'imagePath': 'assets/Food_Delivery.png',
    },
    {
      'title': 'pandamart',
      'subtitle': 'Essentials delivered fast',
      'imagePath': 'assets/pandamart.png',
    },
    {
      'title': 'Shops',
      'subtitle': 'Top brands to\nyour door',
      'imagePath': 'assets/shops.png',
    },
    {
      'title': 'Pick-up',
      'subtitle': 'Self-collect for\n50% off',
      'imagePath': 'assets/pick_up.png',
    },
    {
      'title': 'pandago',
      'subtitle': 'Send parcels in a \ntap',
      'imagePath': 'assets/pandago.png',
    },
  ];

 final List<Map<String, dynamic>> restaurants = [
    {
      'name': 'MMK-S FOODS',
      'rating': '4.0',
      'reviews': '50+',
      'imagePath': 'assets/MMK-S FOODS.jpg',
      'minOrder': 'PKR 199 minimum',
      'cuisine': 'Pakistani',
      'time': '5-20 min',
      'discount': '5% off',
      'deliveryType': 'Free Delivery',
    },
    {
      'name': 'Food Place',
      'rating': '4.4',
      'reviews': '100+',
      'imagePath': 'assets/Food Place.jpg',
      'minOrder': 'PKR 199 minimum',
      'cuisine': 'Pakistani',
      'time': '15-30 min',
      'discount': '',
      'deliveryType': 'Free Delivery',
    },
    {
      'name': 'Burger House',
      'rating': '4.7',
      'reviews': '200+',
      'imagePath': 'assets/Burger House.jpg',
      'minOrder': 'PKR 299 minimum',
      'cuisine': 'Pakistani',
      'time': '10-25 min',
      'discount': '10% off',
      'deliveryType': 'Free Delivery',
    },
    {
      'name': 'Pizza House',
      'rating': '4.5',
      'reviews': '150+',
      'imagePath': 'assets/Pizza House.jpg',
      'minOrder': 'PKR 249 minimum',
      'cuisine': 'Pakistani',
      'time': '20-40 min',
      'discount': '',
      'deliveryType': 'Free Delivery',
    },
  ];


  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xFFE1E2E5),
      drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              
              UserAccountsDrawerHeader(
                accountName: Text("Md Rakib",style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400
                ),),
                accountEmail: Text("mdrakib@gmail.com",style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400
                ),),
                currentAccountPicture: CircleAvatar(
                  child: Image.asset("assets/Image/D,Man.jpg",
                    height: 40,width: 40,fit: BoxFit.cover,),
                ),
                decoration: BoxDecoration(
                    color: AppColor().primaryColor
                ),
              ),
              ListTile(
                title:Text("Vouchers & Offers",style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w400
                ),),
                leading: Icon(Icons.local_offer_outlined,color: AppColor().primaryColor,),
              ),
              ListTile(
                title:Text("Favorite",style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400
                ),),
                leading: Icon(Icons.favorite_border,color: AppColor().primaryColor,),
              ),
              ListTile(
                title:Text("Orders & reordering",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w400
                  ),),
                leading: Icon(Icons.receipt_long,color: AppColor().primaryColor,),
              ),
              ListTile(
                title:Text("Addresses",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w400
                  ),),
                leading: Icon(Icons.local_offer_outlined,color: AppColor().primaryColor,),
              ),
              ListTile(
                title:Text("Payment methods",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w400
                  ),),
                leading: Icon(Icons.payment,color: AppColor().primaryColor,),
              ),
              ListTile(
                title:Text("Help center",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w400
                  ),),
                leading: Icon(Icons.help_center,color: AppColor().primaryColor,),
              ),
              ListTile(
                title:Text("Invite friends",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w400
                  ),),
                leading: Icon(Icons.group_add_outlined,color: AppColor().primaryColor,),
              ),
              Divider(),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Text("Settings",style: TextStyle(
                  color: Colors.black,
                  fontSize: 18
                ),),
              ),
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Text("Terms & Condition/Privacy",style: TextStyle(
                    color: Colors.black,
                    fontSize: 18
                ),),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Text("Logout",style: TextStyle(
                    color: Colors.black,
                    fontSize: 18
                ),),
              ),
            ],
          ),
        ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight:130,
            backgroundColor: Color(0xFFFF2B85),
            leading: Builder(builder: (context) => IconButton(onPressed: () {
          Scaffold.of(context).openDrawer();
        }, icon: Icon(Icons.menu,color:Colors.white,size: 30,)),),

            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Home",style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w500
                ),),
                SizedBox(height: 2,),
                Text("your location or address will be here..",style: TextStyle(
                  fontSize: 13,
                  color: Colors.white,
                ),)
              ],),
              actions: [
                IconButton(onPressed: () {},
                icon: Icon(Icons.favorite_border_rounded,
                color: Colors.white,size: 30,)),
                Stack(
                  children: [
                     IconButton(onPressed: () {},
                icon: Icon(Icons.shopping_bag_outlined,
                color: Colors.white,size: 30,)),
                Positioned(
                  right: 10,
                  top:25 ,
                  child: Container(
                    height: 16,
                    width: 16,
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle
                    ),
                    child: Center(child: Text(
                      "1",
                      textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColor().primaryColor,
                  fontSize: 10,
                  fontWeight: FontWeight.bold
                ),),)
                ),)
              ],)
              ],
              flexibleSpace: FlexibleSpaceBar(
                background: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(padding: EdgeInsets.symmetric(vertical: 18),
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(24)
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search for shop and restaurent",
                          prefixIcon: Icon(CupertinoIcons.search,
                          size: 30,
                          color: Colors.black,
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(vertical: 12)
                        ),
                      ),
                    ),
                    )
                  ],
                ),
              ),
          ),
          SliverList(delegate: SliverChildListDelegate([
            Padding(padding: EdgeInsets.all(20),
            child: StaggeredGrid.count(
              crossAxisCount: 4,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              children: [
               StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 3.1,
                child: Container(
                 decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.black26,
                    width: 0.5
                    )
                 ), 
                 child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.symmetric(
                      vertical: 10,horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Food Delivary",style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),),
                    Text("order food you love",style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),),                   
                        ],
                      )
                    ),
                  Image.asset("assets/Image/9.png")
                  ],
                 ),
                )
                ),


                StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2.05,
                child: Container(
                 decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.black26,
                    width: 0.5
                    )
                 ),
                 child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.symmetric(
                      vertical: 10,horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Pandamart",style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),),
                    Text("Essential delivared fast",style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),),                   
                        ],
                      )
                    ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/Image/pandamart_static_V01_2000x600.png",
                          height: 100,
                        fit: BoxFit.cover,),
                      ),
                    ),
                  )
                  ],
                 ),
                )
                ),


                StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 1.05,
                child: Container(
                 decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.black26,
                    width: 0.5
                    )
                 ),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(padding: EdgeInsets.symmetric(
                      horizontal: 10,vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text("Shops",style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),),
                    Text("Top brands to\nyour door",style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),),
                      ],)
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/Image/images (2).jpeg",
                            height: 80,
                            width: 40,
                            fit:BoxFit.cover,
                            )
                          ),
                        ),
                      )
                  ],
                 ),

                )
                ),


                StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 1.05,
                child: Container(
                 decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.black26,
                    width: 0.5
                    )
                 ),
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(padding: EdgeInsets.symmetric(
                      horizontal: 10,vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text("Pick-up",style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),),
                    Text("self collcet for\n50% off",style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),),
                      ],)
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/Image/images (3).jpeg",
                            height: 80,
                            width: 40,
                            fit:BoxFit.cover,
                        
                            )
                          ),
                        ),
                      )
                  ],
                 ),
                )
                ),


                StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 1.05,
                child: Container(
                 decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.black26,
                    width: 0.5
                    )
                 ),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(padding: EdgeInsets.symmetric(
                      horizontal: 10,vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text("pandago",style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),),
                    Text("send parcels\nin a tap",style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),),
                      ],)
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/Image/download (6).jpeg",
                            height: 80,
                            width: 50,
                            fit:BoxFit.cover,
                            )
                          ),
                        ),
                      )
              ]),
                )
                )
              ])
            ),


            Container(        
              color: Colors.white,
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Padding(padding: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Free Delivary",style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                      ),),
                      SizedBox(height: 20,),

                      InkWell(
                        onTap: () {
                          Navigator.push(context, 
                          MaterialPageRoute(builder: (context) => ShopScreen(),));
                        },
                        child: Container(
                          height: 250,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: restaurants.length,
                            itemBuilder: (context, index) {
                              final data=restaurants[index];
                              return Container(                     
                                margin: EdgeInsets.only(right: 8),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child:Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Stack(
                                      children: [
                                        ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset("assets/Image/10.png",
                                      height: 120,      
                                      fit: BoxFit.cover,
                                      ),),
                        
                                      Padding(padding: EdgeInsets.only(top: 10),
                                      child: Column(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                                            decoration: BoxDecoration(
                                              color:AppColor().primaryColor,
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(8),
                                                topRight: Radius.circular(8),
                                                ),
                                            ),
                                            child: Text("5%off",style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold
                                            ),),
                        
                                          )
                                        ],
                                      ),
                                      ),
                        
                                      SizedBox(height: 20,),
                                      Padding(padding: EdgeInsets.only(top: 50,),
                                      child: Column(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                                            decoration: BoxDecoration(
                                              color:AppColor().primaryColor,
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(8),
                                                topRight: Radius.circular(8),
                                                ),
                                            ),
                                            child: Text("Free Delivary",style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold
                                            ),),
                        
                                          )
                                        ],
                                      ),
                                      )
                                      ],),
                                    Padding(padding: EdgeInsets.all(8),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                            data["name"],style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500
                                            ),),
                                            SizedBox(width: 10,),
                                            Row(
                                              children: [
                                                Icon(Icons.star,color: Colors.orange,size: 18,),
                                                SizedBox(width: 5,),
                                                Text(data["rating"],style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                            ),),
                                            SizedBox(width: 5,),
                                            Text("(${data["reviews"]})")
                                              ],
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Text("${data["minOrder"]}-${data["cuisine"]}",style: TextStyle(
                                          color: Colors.black.withOpacity(0.6),
                                          fontSize: 13
                                        ),),
                                        SizedBox(height: 8,),
                                        Row(
                                          children: [
                                           Icon(Icons.access_time,color: Colors.black,size: 16,),
                                           SizedBox(width: 5,),
                                           Text(data["time"],style: TextStyle(
                                          color: Colors.black.withOpacity(0.6),
                                          fontSize: 13,
                                        ),),
                                         SizedBox(width: 6,),
                                         Icon(Icons.delivery_dining_rounded,
                                         color: AppColor().primaryColor,size: 16,),
                                        SizedBox(width: 4,),
                                        Text(data["deliveryType"],style: TextStyle(
                                          color: AppColor().primaryColor,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold
                                        ),),
                                          
                                          ],
                                        )
                        
                                      ],
                                    ),
                                    )
                                  
                                    
                                   
                                  ],
                                )
                              );
                            },),
                        ),
                      )  

                      
                        
                    ],
                  ),
                  
                  )
                ],
              ),
            )

          

          ])
          ),
       


        ],
      )




    );
  }
}