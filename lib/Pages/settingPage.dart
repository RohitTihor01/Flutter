import 'package:financeapp/Components/switchListTile.dart';
import 'package:flutter/material.dart';


class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text("Settings", style: TextStyle(color: Colors.white,),),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white,),

      ),

      body:  Container(
        color: Colors.grey[200],
        child: const Center(
          child: Column(
            children: [

              Row(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Padding(
                       padding: EdgeInsets.all(10.0),
                       child: Text("GENERAL SETTING",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),),
                     ),
                     ],
                 ),
              SizedBox(height: 5,),
              RadioButtonCustom(buttonName: "Allow Push Notification"),
              RadioButtonCustom(buttonName: "Notify on any Transaction"),
              RadioButtonCustom(buttonName: "Breaking news Notification"),
              RadioButtonCustom(buttonName: "Net worth Notification"),
              RadioButtonCustom(buttonName: "Allow Notification Access"),
              SizedBox(height: 8,),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text("STOCKS NOTIFICATION",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),),
                  ),
                ],
              ),

              SizedBox(height: 5,),

              RadioButtonCustom(buttonName: "Stock drop of 5%"),
              RadioButtonCustom(buttonName: "Stock increase of 5%"),

              SizedBox(height: 8,),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text("CRYPTO NOTIFICATION",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),),
                  ),
                ],
              ),

              SizedBox(height: 5,),

              RadioButtonCustom(buttonName: "Crypto drop of 5%"),
              RadioButtonCustom(buttonName: "Crypto increase of 5%"),




            ],
          ),
        ),
      ),

    );
  }
}

  


