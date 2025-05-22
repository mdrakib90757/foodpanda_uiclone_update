

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:foodpanda_uiclone/Screen/DataModel/datamodel_screen.dart';
import 'package:provider/provider.dart';

class CartProvider extends ChangeNotifier{


final List<DataModel>_cart=[];
List<DataModel> get cart=>_cart;

void toggleItem(DataModel item){
final index=_cart.indexWhere((item1)=>item1.title==item.title);
if(index!=-1){
  _cart[index].quantity++;
}else{
  _cart.add(item);
}

}
void incrementQuantity(int index){
if(index >=0 && index<_cart.length){
  _cart[index].quantity++;
  notifyListeners();

}
}


void decrementQuantity(int index){
  if(index>=0&&index<_cart.length){

  }
  if(_cart[index].quantity>1){
    _cart[index].quantity--;
  }else{
    _cart.removeAt(index);
  }
  notifyListeners();
}

void removeProduct(int index){
  _cart.removeAt(index);
}
int get totalItem=>_cart.fold(0, (sum,item)=>sum+item.quantity);



 static CartProvider of(
      BuildContext context,{bool listen = true
      }) {
    return Provider.of<CartProvider>(
        context,listen:listen
    );
  }


}