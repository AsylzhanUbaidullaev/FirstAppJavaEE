
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';
import 'package:super_app/my_cart.dart';

import 'my_controller.dart';

class TotalPage extends StatelessWidget {
   TotalPage({Key key}) : super(key: key);

  final MyController c = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
              "Total items",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue,
                ),
            ),

              SizedBox(height: 20,),
             Obx(()=>Text("${c.sum.toString()}")),
              SizedBox(height: 20),
              Container(
                width: 180,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blue.shade900,
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                  ),
                  onPressed: ()=>Get.to(()=>MyCart()),
                  child: Text(
                    "Go back", style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: 180,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blue.shade900,
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                  ),
                  onPressed: ()=>Get.to(()=>Rating()),
                  child: Text(
                    "Rating", style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
