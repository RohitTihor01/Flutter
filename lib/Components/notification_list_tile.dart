import 'package:flutter/material.dart';

class NotificationListTile extends StatelessWidget {
  final String text1;
  final String text2;
  final String text4;
  final String text3;
  final IconData icon;
  final void Function()? onTap;


  const NotificationListTile({super.key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon,color: Colors.grey[300],), // icon at left
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text1,style: const TextStyle(color: Colors.grey,fontSize: 12),),
          const SizedBox(height: 5,),
          Text(text2,style: const TextStyle(color: Colors.black),),
          Text(text4,style: const TextStyle(color: Colors.black),),
          const SizedBox(height: 5,),
          Text(text3,style: const TextStyle(color: Colors.grey,fontSize: 10),),
        ],
      ),
      onTap: onTap,

    );


  }
}






