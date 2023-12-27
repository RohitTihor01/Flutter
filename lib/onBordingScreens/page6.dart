import 'package:flutter/material.dart';
class SixthPage extends StatelessWidget {
  const SixthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container( color: Colors.indigo[600],
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
                height: 300,
                width: 150,
                color:Colors.indigo[600],
                child: Image.network("https://cdn.iconscout.com/icon/premium/png-512-thumb/analysis-7009651-5744742.png?f=webp&w=512",color: Colors.white,)),
          ),
          const Text("MARKET NEWS",style: TextStyle(color: Colors.white,fontSize: 25),),
          const SizedBox(height: 10,),
          const Text("Stay on top of the market with our  ",style: TextStyle(color: Colors.white),),
          const Text("awesome news on the stock, crypto,",style: TextStyle(color: Colors.white),),
          const Text("realestate etc.",style: TextStyle(color: Colors.white),),

        ],
      ),
    );
  }
}

