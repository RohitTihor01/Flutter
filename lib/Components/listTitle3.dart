import 'package:flutter/material.dart';

class MyListTile3 extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function()? onTap;
  final IconData icon2;


  const MyListTile3({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
    required this.icon2,
    
  });


  @override
  Widget build(BuildContext context) {
    return  ListTile(
      leading: Icon(icon,color: Colors.indigo[300],), // icon at left
      title: Text(text),

      trailing: Icon(icon2,color: Colors.grey[500],), // icon at right
      onTap: onTap,

    );
  }
}

