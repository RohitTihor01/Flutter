import 'package:financeapp/Pages/sign_in_page.dart';
import 'package:financeapp/Pages/sign_up_page.dart';
import 'package:flutter/material.dart';
class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              //Image
              SizedBox(
                height: 300,
                  width: 150,
                  child:  Image.network("https://w0.peakpx.com/wallpaper/23/133/HD-wallpaper-f-name-blue-flame-f-name-blue-flame-letter.jpg"),
              ),
              const SizedBox(height: 10,),
              //text
              Text("Welcome to Finance",style: TextStyle(color: Colors.blue[400],fontSize: 25),),
               const SizedBox(height: 10,),
              Text("Manage all of your finance Account at one place",style: TextStyle(color: Colors.grey[400],fontSize: 15),),
              const SizedBox(height: 20,),
              //text
              ElevatedButton(

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignInPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  minimumSize: const Size(200, 50),// Background color
                ),

                child: const Text('Login',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              ),
              const SizedBox(height: 20,),
              //Button
              ElevatedButton(

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  SignUpPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  minimumSize: const Size(200, 50),// Background color
                ),

                child:  Text('Sign Up',style: TextStyle(color: Colors.indigo[900],fontWeight: FontWeight.bold),),
              ),

            ],
          ),
        ),
      ),


    );
  }
}
