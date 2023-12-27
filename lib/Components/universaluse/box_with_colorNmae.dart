import 'package:flutter/material.dart';

class BoxColorWord extends StatelessWidget {
  final String text;
  final Color customColor;
  const BoxColorWord({super.key,
  required this.text,
  required this.customColor,
  });

  @override
  Widget build(BuildContext context) {
    return  Row(
        children: [
          Container(
            height: 10,
            width: 10,
            color: customColor,
          ),
          const SizedBox(width: 5,),
          Text(text,style: const TextStyle(color: Colors.blue),),
        ],
    );
  }
}
