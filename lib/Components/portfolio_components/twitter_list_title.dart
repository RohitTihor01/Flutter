/*import 'package:flutter/material.dart';

class TwitterTile1 extends StatelessWidget {
  final String text1;
  final String subText1;
  final String text2;
  final String subText2;
  const TwitterTile1({
    super.key,
    required this.text1,
    required this.text2,
    required this.subText1,
    required this.subText2,
  });

  @override
  Widget build(BuildContext context) {
    return  Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          tileColor: Colors.white,
          title: Text(text1) ,
          subtitle:Text(subText1) ,

         leading: SizedBox(
           height: 50,
           width: 170,
           child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text(text2),
               Text(subText2),


            ],

                   ),
         ),


        )
      ],
    );
  }
}

 */
import 'package:flutter/material.dart';

class TwitterTile1 extends StatelessWidget {
  final String text1;
  final String subText1;
  final String text2;
  final String subText2;

  const TwitterTile1({
    super.key,
    required this.text1,
    required this.text2,
    required this.subText1,
    required this.subText2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 170,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(subText1,style: const TextStyle(color: Colors.grey),),
                Text(text1),
              ],
            ),
          ),
          const SizedBox(width: 16), // Adjust the spacing between columns
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(subText2,style: const TextStyle(color: Colors.grey),),
                Text(text2),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
