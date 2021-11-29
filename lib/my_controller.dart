import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController{
  var iphone = 0.obs;
  var macbook = 0.obs;
  int get sum=>iphone.value+macbook.value;

  increament(){
    iphone.value++;
  }
  decreament(){
    if(iphone.value<=0){
      Get.snackbar("Buying Iphone", "Cannot be less than 0",
      icon:Icon(Icons.alarm),
      barBlur: 20,
      isDismissible: true,
      duration: Duration(seconds:3),
      );

    }
    else{
      iphone.value--;
    }
  }

  increamentMac(){
     macbook.value++;
  }
  decreamentMac(){
    if(macbook.value<=0){
      Get.snackbar("Buying Macbook", "Cannot be less than 0",
        icon:Icon(Icons.alarm),
        barBlur: 20,
        isDismissible: true,
        duration: Duration(seconds:3),
      );

    }
    else{
      macbook.value--;
    }
  }
}

