import 'package:flutter/material.dart';

import '../Pages/sign_in_page.dart';
import 'listTile.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(


      child: Column(
        children: [
          DrawerHeader(child: Center(
            child: SizedBox(
              height: 100,
              child:  Image.network("https://cdn.iconscout.com/icon/free/png-512/free-forex-1795435-1522799.png?f=webp&w=512"),
            ),
          ),
          ),

          const SizedBox(height: 20,),

          MyListTile(text: 'Profile', icon: Icons.man, onTap: (){},),
          MyListTile(text: 'LeaderBoard', icon: Icons.list, onTap: (){}),
          MyListTile(text: 'Settings', icon: Icons.settings, onTap: (){}),
          MyListTile(text: 'Logout', icon: Icons.logout, onTap: (){ Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => SignInPage()) ,
          );}),

        ],
      ),
    );
  }
}