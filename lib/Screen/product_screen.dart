


import 'package:flutter/material.dart';
import 'package:foodpanda_uiclone/Screen/Provider/provider_screen.dart';
import 'package:foodpanda_uiclone/Utils/custom_color.dart';
import 'package:provider/provider.dart';

class ProductScreen extends StatefulWidget {
  final String? image;
  const ProductScreen({super.key, required this.image,});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}



class _ProductScreenState extends State<ProductScreen> {
  
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
    Widget _productQuantity(IconData icon, int Index, Color color){
  
final finaldata=Provider.of<CartProvider>(context,listen: true);
      return Expanded(
        child: GestureDetector(
          onTap: () {
            setState(() {
              if(icon==Icons.add){
                finaldata.incrementQuantity(Index);
              }else if(icon ==Icons.remove){
                finaldata.decrementQuantity(Index);
              }
            });
          },
         child:  Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    color:color,
                    shape: BoxShape.circle
                  ),
                  child:Icon(icon,color: Colors.white,size: 20,)
                ),
        ),
      );
    }
 
  @override
  Widget build(BuildContext context) {
    final finaldata=Provider.of<CartProvider>(context,listen: true);
 
    return Scaffold(
     body: ListView(
      padding: EdgeInsets.all(16),
      children: [
        Stack(
          children: [
            Container(
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(widget.image??"assets/Image/9.png",),
                  fit: BoxFit.cover)
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                margin: EdgeInsets.only(top: 30),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle
                ),
                child: Center(
                  child: Icon(Icons.close,color: AppColor().primaryColor,),
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Criket Deals 2",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24
            ),),
            Column(
              children: [
                Text("Rs 869.00",style: TextStyle(
                 color: Colors.grey,
                  fontSize: 13,
                  decoration: TextDecoration.lineThrough
                ),),
                Text("Rs 569.00",style: TextStyle(
                 color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.bold
                ),)
              ],
            )
          ],
        ),
        SizedBox(height: 10,),
        Text("6 inch sub & 34b ml drink",style: TextStyle(
          fontSize: 14,
          color:Colors.black54
        ),),
        Divider(height: 40,color: Colors.black12,),
        SizedBox(height: 8,),
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColor().primaryColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black12)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Chosse your Bread",style:TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 5,horizontal: 8),
                    decoration: BoxDecoration(
                      color:AppColor().primaryColor,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("Required",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                      color: Colors.white
                    ),),
                  )
                ],
              ),
              SizedBox(height: 8,),
              Text("Select one",style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Color(0xFFDF1C6e)
              ),),
              RadioListTile(
                value: "italian", 
                groupValue: "bread",
                title: Text("italian"),
                secondary: Text("Free",style: TextStyle(
                  fontSize: 15
                ),),
                activeColor: Color(0xFFDF1C6E),
                 onChanged: (value) {},
                 
                 ),
                 RadioListTile(
                value: "Whrat", 
                groupValue: "bread",
                title: Text("Whrat"),
                secondary: Text("Free",style: TextStyle(
                  fontSize: 15
                ),),
                activeColor: Color(0xFFDF1C6E),
                 onChanged: (value) {},
                 ),
                  RadioListTile(
                value: "Sesame", 
                groupValue: "bread",
                title: Text("Sesame"),
                secondary: Text("Free",style: TextStyle(
                  fontSize: 15
                ),),
                activeColor: Color(0xFFDF1C6E),
                 onChanged: (value) {},
                 ),
                 RadioListTile(
                value: "Huney Oat", 
                groupValue: "bread",
                title: Text("Huney Oat"),
                secondary: Text("Free",style: TextStyle(
                  fontSize: 15
                ),),
                activeColor: Color(0xFFDF1C6E),
                 onChanged: (value) {},
                 ),
                
            ],
          ),
        ),
        SizedBox(height: 10,),
        Text("Special Instructions",style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),),
         SizedBox(height: 5,),
        Text("Please let us know if you allergic to anything or if we need to avoid anthing",style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.black54
        ),),
        SizedBox(height: 10,),
        TextField(
          maxLines: 4,
          decoration: InputDecoration(
            hintText: "e-g no mayo",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),            
            ),
            enabledBorder:OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color:Colors.grey)
            ) ,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
               borderSide: BorderSide(color: AppColor().primaryColor)      
            ), 
            contentPadding: EdgeInsets.all(12)
          ),

        
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Padding(padding:EdgeInsets.only(right: 10),
          child: Text("0/500",style: TextStyle(
            color: Colors.black
          ),),
          ),
        ),
         SizedBox(height: 10,),
        Text("If this product is not available",style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),),
         SizedBox(height: 10,),
         Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey.shade300)
          ),
          child: ListTile(
            title: Text("Remove if from my order"),
            trailing:IconButton(onPressed: () {
              
            }, icon:Icon( Icons.arrow_forward_ios,
            color: AppColor().primaryColor,))
          ),
         ),
         SizedBox(height: 10,),
      ],
     ), 
     bottomNavigationBar: Container(
      height: 90,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15)
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            spreadRadius: 1,
            blurRadius: 2
          )
          
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
               children: [
                  _productQuantity(Icons.remove,0, Colors.grey.shade400),
                 SizedBox(width: 10,),
                 Text(finaldata.totalItem.toString(),style: TextStyle(
                   fontSize: 18,
                   fontWeight: FontWeight.bold
                 ),),
                 SizedBox(width: 10,),
                  _productQuantity(Icons.add, 0, AppColor().primaryColor),
               ],
             ),
          ),
          
          Expanded(
            child: Container(
             //width: MediaQuery.of(context).size.width/2,
              padding: EdgeInsets.symmetric(vertical: 18),
              decoration: BoxDecoration(
                color: AppColor().primaryColor,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Center(
                child: Text("Add",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white
                ),
                ),),
            ),
          )
        ],
      ),
     ),
    );
  }

}



 