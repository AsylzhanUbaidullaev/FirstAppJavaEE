import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:super_app/my_controller.dart';
import 'package:get/get.dart';
import 'package:super_app/total_page.dart';

class MyCart extends StatelessWidget {
   MyCart({Key key}) : super(key: key);

  final MyController c = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text("Iphone", style: TextStyle(
                  fontSize: 30,
                  color: Colors.amber
                ),),
                Expanded(child: Container()),
                Container(width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                  color: Colors.redAccent,
                ),
                  child: IconButton(
                    icon: Icon(Icons.add, color: Colors.white),
                    onPressed: ()=>c.increament(),
                  )
                ),
                SizedBox(width: 20),
                Obx(()=>Text("${c.iphone.toString()}",
                style: TextStyle(
                  fontSize: 30,
                ),)),
                SizedBox(width: 20),
                Container(width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.redAccent,
                  ),
                    child: IconButton(
                      icon: Icon(Icons.remove, color: Colors.white),
                      onPressed: ()=>c.decreament(),
                    )
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text("Macbook", style: TextStyle(
                    fontSize: 30,
                    color: Colors.amber
                ),),
                Expanded(child: Container()),
                Container(width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.redAccent,
                    ),
                    child: IconButton(
                      icon: Icon(Icons.add, color: Colors.white),
                      onPressed: ()=>c.increamentMac(),
                    )
                ),
                SizedBox(width: 20),
                Obx(()=>Text("${c.macbook.toString()}",
                  style: TextStyle(
                    fontSize: 30,
                  ),)),
                SizedBox(width: 20),
                Container(width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.redAccent,
                    ),
                    child: IconButton(
                      icon: Icon(Icons.remove, color: Colors.white),
                      onPressed: ()=>c.decreamentMac(),
                    )
                )
              ],
            ),
            SizedBox(height: 20),
            Row(children: [
              Expanded(child: Container()),
              Container(
                width: 150,
                height: 70,
                decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(30),
                 color: Colors.blue.shade900,
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                  ),
                  onPressed: ()=>Get.to(()=>TotalPage()),
                  child: Text(
                    "Total", style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                  ),
                ),
              )
            ],)
          ],
        ),
      ),
    );
  }
}
