import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodpanda_uiclone/Screen/Widget/populertab_screen.dart';
import 'package:foodpanda_uiclone/Utils/custom_color.dart';

class ShopScreen extends StatefulWidget {
  
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> 

with SingleTickerProviderStateMixin{

late TabController _tabController;

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this,initialIndex: 0);
    _tabController.addListener(_handleTabSelection);
  }


_handleTabSelection(){
  if(_tabController.indexIsChanging){
    setState(() {
      
    });
  }
}

@override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }


   final List<String> categories = [
    "Popular",
    "Cricket Deals",
    "Strong Pepsi Deals",
    "All New"
  ];



final List<Map<String, String>> popularItems = [
    {
      "title": "Cricket Deal 2",
      "price": "Rs. 549.00",
      "oldPrice": "Rs. 869.00",
      "image": "assets/Image/burger.png"
    },
    {
      "title": "Chicken Fajita",
      "price": "from Rs. 785.00",
      "image": "assets/Image/10101.png"
    },
    {
      "title": "Chicken Tikka",
      "price": "from Rs. 785.00",
      "image": "assets/Image/tikka.png"
    },
    {
      "title": "Chicken Teriyaki",
      "price": "from Rs. 840.00",
      "image": "assets/Image/tikka.png"
    },
    {
      "title": "Roasted Chicken Breast",
      "price": "from Rs. 710.00",
      "image": "assets/Image/11111.png"
    },
    {
      "title": "Chicken Tikka Salad",
      "price": "from Rs. 845.00",
      "image": "assets/Image/121212.png"
    }
  ];                


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: categories.length,
       child: Scaffold(
        appBar: AppBar(
          leading:IconButton(onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back,
          color:AppColor().primaryColor,size: 25,)) ,
          title:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text("Delivery",style:TextStyle(
            //color: AppColor().primaryColor,
            fontSize: 16,
            fontWeight: FontWeight.w600
          ),),
          Text("15-30 min",style:TextStyle(
            color: AppColor().primaryColor,
            fontSize: 14,
            
          ),)
            ],
          ),
        actions: [
          IconButton(onPressed: () {}, 
          icon: Icon(Icons.favorite_border,
          color: AppColor().primaryColor,)),

          IconButton(onPressed: () {}, 
          icon: Icon(Icons.share_outlined,
          color: AppColor().primaryColor,)),

          IconButton(onPressed: () {}, 
          icon: Icon(Icons.search_outlined,
          color: AppColor().primaryColor,)),
        ],
        ),

        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.
                      asset("assets/Image/subway-removebg-preview.png",height: 80,width: 80,),
                      SizedBox(width: 10,),
                      Text("Subway",style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                      ),)
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Expanded(
                        child: Text("1.5km away| Rs. 99.00 Delivary| Rs.249.00 Minimum Service free applies",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 13,
                        
                        ),),
                      ),
                      TextButton(onPressed: () {},
                      child: Text(
                        "More info",
                        style:TextStyle(
                          color: AppColor().primaryColor,
                          fontSize: 13,
                          ),))

                          ],),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Icon(Icons.star_outline,
                      color: AppColor().primaryColor,
                      size: 30,
                      ),
                        SizedBox(width: 5,),
                      Text("3.9",
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                      ),
                      SizedBox(width: 8,),
                      Text("1000+ ratings",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 13
                      ),
                      ),
                      Spacer(),
                      TextButton(onPressed: () {},
                      child: Text(
                        "see reviews",
                        style:TextStyle(
                          color: AppColor().primaryColor,
                          fontSize: 13,
                          ),))

                    ],
                  ),
                  Row(
                    children: [
                      Icon(CupertinoIcons.clock,
                      color: AppColor().primaryColor,
                      size: 28,
                      ),
                      SizedBox(width: 5,),
                      Text("Delivary 15-30 min",
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                      ),
                      Spacer(),
                      TextButton(onPressed: () {},
                      child: Text(
                        "Change",
                        style:TextStyle(
                          color: Colors.black54,
                          fontSize: 13,
                          ),))

                    ],
                  ),

                  SizedBox(height: 8,),
                  Row(
                    children: [
                      Image.asset("assets/Image/panda voucher.png",
                      height: 25,
                      width: 25,
                      fit: BoxFit.cover,
                      ),
                      SizedBox(width: 8,),
                      Text("Availacle deals",style: TextStyle(
                        fontWeight: FontWeight.bold,

                      ),)
                    ],
                  ),
                  SizedBox(height: 10,),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 8),
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: AppColor().primaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/Image/discount.png",
                          height: 20,
                          width: 20,
                          fit: BoxFit.cover,
                          color: AppColor().primaryColor,
                          ),
                          SizedBox(width: 8,),
                          Text("Rs. 320 off",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColor().primaryColor
                          ),)
                        ],
                      ),
                      SizedBox(height: 10,),
                      Text("Min order Rs. 320 vaild for selected item\nAuto-applied ",style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontSize: 12
                      ),)
                    ],
                  ),
                  ),
                  SizedBox(height: 16,),
                  TabBar(
                    tabAlignment: TabAlignment.start,
                    controller: _tabController,
                    isScrollable: true,
                    indicatorSize: TabBarIndicatorSize.tab,
                    unselectedLabelColor: Colors.black,
                    labelColor: AppColor().primaryColor,
                    labelStyle: TextStyle(fontWeight: FontWeight.w500),
                    indicatorColor: AppColor().primaryColor,
                    indicatorWeight: 3,
                    indicatorPadding: EdgeInsets.symmetric(horizontal: 20),
                    tabs: [
                    Tab(text:"Populer",),
                     Tab(text:"Criket Deals",),
                      Tab(text:"Strong Pepsi Deals",),
                       Tab(text:"All New",),                     
                  ]),
                  Center(child: [
                    PopulertabScreen(popularItems: popularItems,),                   
                    Center(child: Text("Criket Details Tab"),),
                    Center(child: Text("Strong Pepsi Deals Tab"),),
                    Center(child: Text("All New Tab"),),
                  ][_tabController.index],)


                ],
              ),
            )
          ],
        ),
       )
       );
  }
}