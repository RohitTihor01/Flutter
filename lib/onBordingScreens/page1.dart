import 'package:flutter/material.dart';
class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container( color: Colors.indigo[600],
    child:  Center(

      child : Column(

        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
              height: 300,
                width: 150,
                color:Colors.indigo[600],
                child: Image.network("https://cdn.iconscout.com/icon/free/png-512/free-letter-f-4901212-4078230.png?f=webp&w=512",color: Colors.white,)),
          ),
        ],
      ),

    ),
    );
  }
}
