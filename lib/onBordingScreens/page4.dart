import 'package:flutter/material.dart';
class FourthPage extends StatelessWidget {
  const FourthPage({super.key});

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
                  child: Image.network("https://cdn.iconscout.com/icon/free/png-512/free-wallet-balance-1824249-1545936.png?f=webp&w=512",color: Colors.white,)),
            ),
            const Text("CRYPTO TRADING ",style: TextStyle(color: Colors.white,fontSize: 25),),
            const SizedBox(height: 10,),
            const Text("Buy and sell crypto currency",style: TextStyle(color: Colors.white),),
            const Text("on your figure-tips.",style: TextStyle(color: Colors.white),),

          ],
        ),
      ),
    );
  }
}
