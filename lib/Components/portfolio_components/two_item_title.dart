import 'package:flutter/material.dart';

class PortfolioTitle extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  final String text2;
  final String imageurl;
  const PortfolioTitle({
    super.key,
  required this.text,
  required this.text2,
  required this.imageurl,
  required this.onTap,
  });



  @override
  Widget build(BuildContext context) {
    return  ListTile(

      tileColor: Colors.white,

      leading: CircleAvatar(radius:25,  backgroundImage: NetworkImage(imageurl),), // icon at left
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(text,style: const TextStyle(color: Colors.grey,fontSize: 10),),
          Text(text2)
        ],
      ),

      trailing: Icon(Icons.chevron_right,color: Colors.grey[500],),
      onTap: onTap,

    );
  }
}
