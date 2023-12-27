import 'package:flutter/material.dart';

class NewsListTile extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final void Function()? onTap;

  const NewsListTile({
    super.key,
  required this.text1,
  required this.text2,
    required this.text3,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListTile(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(text1,style: const TextStyle(color: Colors.black),),
              Text(text3,style: const TextStyle(color: Colors.black),),
              const SizedBox(height: 5,),
              Text(text2,style: const TextStyle(color: Colors.grey,fontSize: 10),),
            ],
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}
