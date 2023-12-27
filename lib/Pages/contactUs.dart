import 'package:flutter/material.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text("Contact Us", style: TextStyle(color: Colors.white,),),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white,),

      ),

      body:  const Center(
        child: Column(
          children: [


          ],
        ),
      ),

    );
  }
}