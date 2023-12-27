import 'package:financeapp/Pages/sign_in_page.dart';
import 'package:flutter/material.dart';

import '../Components/text_field.dart';

class SignUpPage extends StatelessWidget {
   SignUpPage({super.key});
  final fullNameController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body:  Padding(
        padding:  const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Create new account',style: TextStyle(color: Colors.blue[600],fontSize: 25,fontWeight: FontWeight.bold),),
                ],
              ),
              const SizedBox(height: 30,),

              MyTextFiled(controller: fullNameController, hintText: "Full Name", obscureText: false),

              const SizedBox(height: 10,),

              MyTextFiled(controller: phoneNumberController, hintText: "Phone Number", obscureText: false),

              const SizedBox(height: 10,),

              MyTextFiled(controller: emailController, hintText: "E-mail or Phone Number", obscureText: false),

              const SizedBox(height: 10,),

              MyTextFiled(controller: passwordController, hintText: "Password", obscureText: true),

              const SizedBox(height: 50,),

              ElevatedButton(

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignInPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  minimumSize: const Size(200, 50),// Background color
                ),

                child: const Text('Sign Up',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              ),



            ],
          ),
        ),
      ),
    );
  }
}
