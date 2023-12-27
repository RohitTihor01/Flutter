import 'package:flutter/material.dart';
class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

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
                  child: Image.network("https://cdn.iconscout.com/icon/free/png-512/free-currency-financial-money-price-indian-rupee-finance-copy-13-1392.png?f=webp&w=512",color: Colors.white,)),
            ),
            const Text("STOCKS TRADING",style: TextStyle(color: Colors.white,fontSize: 25),),
            const SizedBox(height: 10,),
            const Text("Track and trade stocks",style: TextStyle(color: Colors.white),),

          ],
        ),



      ),
    );



  }
}

