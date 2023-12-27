import 'package:flutter/material.dart';
class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

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
                      child: Image.network("https://cdn.iconscout.com/icon/premium/png-512-thumb/graph-2024013-1708286.png?f=webp&w=512",color: Colors.white,)),
            ),
             const Text("NET WORTH",style: TextStyle(color: Colors.white,fontSize: 25),),
            const SizedBox(height: 10,),
            const Text("Quickly visualized your total net worth",style: TextStyle(color: Colors.white),),
            const Text("across all accounts as well as your",style: TextStyle(color: Colors.white),),
            const Text("financial progress over time.",style: TextStyle(color: Colors.white),),
          ],
        ),



      ),
    );



  }
}

