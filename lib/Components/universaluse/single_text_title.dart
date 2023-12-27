import 'package:flutter/material.dart';

class SingleText extends StatelessWidget {
  final String text1;
  final VoidCallback? onTap; // VoidCallback is a typedef for a function that takes no arguments and returns void.

  const SingleText({
    super.key,
    required this.text1,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListTile(
        title: Text(text1,style: const TextStyle(fontWeight: FontWeight.bold),),
        onTap: onTap,

      ),
    );
  }
}
