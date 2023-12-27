import 'package:flutter/material.dart';

class PortfolioListTile extends StatelessWidget {
  final String text;
  final String traing;
  final void Function()? onTap;
  final String text2;
  final String imageurl;

  const PortfolioListTile({super.key,
    required this.text,
    required this.text2,
    required this.onTap,
    required this.imageurl,
    required this.traing,


  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
    tileColor: Colors.white,

      leading: CircleAvatar(radius:25,  backgroundImage: NetworkImage(imageurl),), // icon at left
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(text2,style: const TextStyle(fontWeight: FontWeight.bold),),
          Text(text,style: const TextStyle(color: Colors.grey,fontSize: 10),),

        ],
      ),

      trailing: ElevatedButton(onPressed: () {}, child: Text(traing,style: const TextStyle(color: Colors.grey),),),
      onTap: onTap,

    );
  }
}

