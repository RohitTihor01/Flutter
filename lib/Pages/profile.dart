import 'package:financeapp/Components/listTitle3.dart';
import 'package:financeapp/Pages/accountDetails.dart';
import 'package:financeapp/Pages/contactUs.dart';
import 'package:financeapp/Pages/settingPage.dart';
import 'package:financeapp/Pages/sign_in_page.dart';
import 'package:flutter/material.dart';
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text("Profile", style: TextStyle(color: Colors.white,),),
        centerTitle: true,
         iconTheme: const IconThemeData(color: Colors.white,),
      ),

      body:  Center(
        child: Column(
          children: [
            SizedBox(
              height: 250,
              child: Image.network(
                "https://images.pexels.com/photos/1264210/pexels-photo-1264210.jpeg?auto=compress&cs=tinysrgb&w=600",
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 20,),
            
            const Text("Will Kim",style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold,fontSize: 20),),

            const SizedBox(height: 20,),

            MyListTile3(text: "Account Details", icon: Icons.person_2_rounded, onTap: (){
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => const AccountDetails()),);
            }, icon2: Icons.arrow_forward_ios),
            MyListTile3(text: "Settings", icon: Icons.settings, onTap: (){
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => const SettingPage()),);
            }, icon2: Icons.arrow_forward_ios),
            MyListTile3(text: "Contact Us", icon: Icons.phone_in_talk, onTap: (){ Navigator.push(
               context, MaterialPageRoute(builder: (context) => const ContactUsPage()),);}, icon2: Icons.arrow_forward_ios),

            const SizedBox(height: 10,),

            ElevatedButton(
              onPressed: () {

                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => SignInPage()) ,
                );

              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                minimumSize: const Size(300, 60),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.grey), // Border color
                  borderRadius: BorderRadius.circular(8.0),
              ),
                elevation: 0,
              ),
              child: const Text(
                "Logout",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            )





          ],
        ),
      ),

    );
  }
}
