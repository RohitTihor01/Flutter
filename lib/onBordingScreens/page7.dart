import 'package:flutter/material.dart';
class SeventhPage extends StatelessWidget {
  const SeventhPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container( color: Colors.indigo[600],
      child:  Center(
        child:  Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                  height: 300,
                  width: 150,
                  color:Colors.indigo[600],
                  child: Image.network("https://cdn.iconscout.com/icon/free/png-512/free-bank-banking-finance-government-safe-secure-money-8-6381.png?f=webp&w=512",color: Colors.white,)),
            ),
            const Text("BANK ACCOUNT",style: TextStyle(color: Colors.white,fontSize: 25),),
            const SizedBox(height: 10,),
            const Text("Link all of your bank accounts and",style: TextStyle(color: Colors.white),),
            const Text("manage them in a single app",style: TextStyle(color: Colors.white),),

          ],
        ),
      ),
    );
  }
}

