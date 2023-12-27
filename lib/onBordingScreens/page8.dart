import 'package:flutter/material.dart';
class EighthPage extends StatelessWidget {
  const EighthPage({super.key});

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
                  child: Image.network("https://cdn.iconscout.com/icon/free/png-512/free-notification-3250915-2724431.png?f=webp&w=512",color: Colors.white,)),
            ),
            const Text("GET NOTIFIED",style: TextStyle(color: Colors.white,fontSize: 25),),
            const SizedBox(height: 10,),
            const Text("Receive notifications when important",style: TextStyle(color: Colors.white),),
            const Text("events occur, such as payment,",style: TextStyle(color: Colors.white),),
            const Text("deposits or news",style: TextStyle(color: Colors.white),),

          ],
        ),
      ),
    );
  }
}
