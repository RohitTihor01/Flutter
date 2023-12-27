import 'package:flutter/material.dart';
class FifthPage extends StatelessWidget {
  const FifthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container( color: Colors.indigo[600],
      child: Center(
        child:  Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                  height: 300,
                  width: 150,
                  color:Colors.indigo[600],
                  child: Image.network("https://cdn.iconscout.com/icon/free/png-512/free-indian-currency-rupee-note-payment-money-finance-8-6387.png?f=webp&w=256",color: Colors.white,)),
            ),
            const Text("EXPENSE TRACKING",style: TextStyle(color: Colors.white,fontSize: 25),),
            const SizedBox(height: 10,),
            const Text("Track your expenses and view their ",style: TextStyle(color: Colors.white),),
            const Text("distribution per category.",style: TextStyle(color: Colors.white),),

          ],
        ),
      ),
    );
  }
}

