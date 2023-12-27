import 'package:financeapp/Components/notification_list_tile.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text("Notifications",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white,),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
        
            NotificationListTile(text1:"TRANSACTION" , text2: "You paid \$25 with your Axis credit card ",text4: "for safeway", text3: "12 hours ago", icon: Icons.calendar_month_outlined, onTap: () {}, ),
            NotificationListTile(text1:"SALARY RECEIVED" , text2: "You received \$5,002 from your ",text4: "employer", text3: "one days ago", icon: Icons.attach_money, onTap: () {},  ),
            NotificationListTile(text1:"PORTFOLIO MILESTONE" , text2: "Congratulations! Your net worth just surpassed",text4: "\$10,000", text3: "one days ago", icon: Icons.keyboard_arrow_down_outlined, onTap: () {},  ),
            NotificationListTile(text1:"DIVIDEND RECEIVED" , text2: "You received dividend in the amount of",text4: "@27.70 (from XLE)", text3: "one days ago", icon: Icons.chat_outlined, onTap: () {},  ),
            NotificationListTile(text1:"SHARE BOUGHT" , text2: "You have just bought 53 shares of \$NFXL for",text4: "\$4,023", text3: "one days ago", icon: Icons.person, onTap: () {},  ),
            NotificationListTile(text1:"Deposits" , text2: "Congratulations! Your net worth just surpassed",text4: "\$10,000", text3: "one days ago", icon: Icons.money, onTap: () {},  ),
        
          ],
        ),
      ),
    );
  }
}
