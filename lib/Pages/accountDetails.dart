import 'package:financeapp/Components/list_tile.dart';
import 'package:flutter/material.dart';

class AccountDetails extends StatelessWidget {
  const AccountDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text("Account Details", style: TextStyle(color: Colors.white,),),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white,),

        actions:  [
          TextButton (
            onPressed:(){},
            child: const Padding(padding: EdgeInsets.all(10.0),
              child: Text("Save",style: TextStyle(color: Colors.white,fontSize: 15)),
            ),
          ),
        ],

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
                    child: Text("PUBLIC PROFILE",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
              SizedBox(height: 5,),

              LIST2TILE(name: 'First Name', name2: 'Will', hint: 'Your Firstname',),
              LIST2TILE(name: 'Last Name', name2: 'Kim', hint: 'Your Lastname',),
              LIST2TILE(name: 'Username', name2: '', hint: 'Your Username',),
              LIST2TILE(name: 'Gender', name2: '', hint: 'Male or female',),


              SizedBox(height: 8,),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text("PRIVATE DETAILS",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),),
                  ),
                ],
              ),

              SizedBox(height: 5,),

              LIST2TILE(name: 'E-mail Address', name2: 'w@gmail.com', hint: 'Your E-mail', ),








            ],
          ),
        ),
      ),

    );
  }
}
