import 'package:flutter/material.dart';

class CircularAvtar extends StatelessWidget {
  final String text;
  final String imageUrl;
  final void Function()? onTap;
  const CircularAvtar({super.key,
    required this.text,
    required this.imageUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 120,
      width: 100,
      color: Colors.white,
      child: Center(
        child: Column(
          children: [
            GestureDetector(onTap:onTap,child: CircleAvatar(backgroundImage:NetworkImage(imageUrl),radius: 30,)),
            const SizedBox(height: 5,),
            Center(child: Text(text,style: const TextStyle(color: Colors.grey),))
          ],
        ),
      ),
      );
  }
}
