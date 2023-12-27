import 'package:flutter/material.dart';

class TListTile extends StatelessWidget {

  final String text;
  //final IconData icon;
  final void Function()? onTap;
  final String text2;
  final String text3;
  final String imageurl;


  const TListTile({super.key,
  required this.text,
  required this.text2,
  //required this.icon,
  required this.onTap,
    required this.imageurl,
    required this.text3,
  });

  @override
  Widget build(BuildContext context) {
    return  ListTile(

        tileColor: Colors.white,
      leading: CircleAvatar(radius:25,  backgroundImage: NetworkImage(imageurl),), // icon at left
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(text,style: const TextStyle(color: Colors.grey,fontSize: 12),),
          Text(text2)
        ],
      ),

      trailing: Text(text3,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 12),),
      onTap: onTap,

    );
  }
}
