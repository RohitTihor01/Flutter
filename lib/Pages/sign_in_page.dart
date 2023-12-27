import 'package:financeapp/Components/text_field.dart';
import 'package:financeapp/Pages/mainhomePage.dart';
import 'package:flutter/material.dart';



import 'facebookSignIn.dart';

class SignInPage extends StatelessWidget {
   SignInPage({super.key});
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Sign In',style: TextStyle(color: Colors.blue[600],fontSize: 25,fontWeight: FontWeight.bold),),
                ],
              ),
              const SizedBox(height: 30,),

              MyTextFiled(controller: usernameController, hintText: "E-mail or Phone number", obscureText: false),

              const SizedBox(height: 10,),

              MyTextFiled(controller: passwordController, hintText: "Password", obscureText: true),

              const SizedBox(height: 50,),

              ElevatedButton(

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyHomeScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  minimumSize: const Size(200, 50),// Background color
                ),

                child: const Text('Login',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              ),

              const SizedBox(height: 30,),

              const Text("OR",style: TextStyle(color: Colors.black,fontSize: 15),),

              const SizedBox(height: 30,),

              ElevatedButton(

                onPressed: () {



                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const WebViewScreen (),),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  minimumSize: const Size(200, 50),// Background color
                ),

                child: const Text('Facebook Login',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              ),


            ],
          ),
        )
      ),
    );
  }
}

