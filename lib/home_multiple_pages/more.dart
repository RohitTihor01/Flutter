import 'package:financeapp/Pages/news.dart';
import 'package:financeapp/Pages/notification.dart';
import 'package:flutter/material.dart';

import '../Components/listTitle3.dart';
import '../Pages/profile.dart';

class More extends StatelessWidget {
  const More({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text("More",style: TextStyle(color: Colors.white),),
        centerTitle: true,

        actions:  [
          TextButton (
            onPressed:(){},
            child: const Padding(padding: EdgeInsets.all(10.0),
              child: Text("Edit",style: TextStyle(color: Colors.white,fontSize: 15)),
            ),
          ),
        ],
      ),

      body:  Column(
          children: [

            MyListTile3(text: "News", icon: Icons.newspaper, onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NewsPage()), );
            }, icon2: Icons.arrow_forward_ios),
            MyListTile3(text: "Notifications", icon: Icons.notifications, onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NotificationPage()) ,
              );
            }, icon2: Icons.arrow_forward_ios),
            MyListTile3(text: "Profile", icon: Icons.person_2_rounded, onTap: (){ Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProfilePage()),
            );}, icon2: Icons.arrow_forward_ios),



          ]
      ),

    );
  }
}
