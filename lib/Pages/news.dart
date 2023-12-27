import 'package:financeapp/Components/news_list_tile.dart';
import 'package:flutter/material.dart';
class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: const Text("News",style: TextStyle(color: Colors.white),),
          centerTitle: true,
          iconTheme: const IconThemeData(color: Colors.white,),
        ),
        body:  SingleChildScrollView(
          child: Column(
            
            children: [
              
              NewsListTile(text1: "Why the worst may already be over for the ", text3: "global economy.", text2: "Bloomberg * 9 hour ago", onTap: (){},),
              NewsListTile(text1: "Boeing ended the week worth \$25 billion less ", text2: "Quartz * one day ago", text3: "than it started.", onTap: (){},),
              NewsListTile(text1: "Better economic data needed before wall ", text2: "CNBC * 3 days ago", text3: "Street can rise back to all time hi...", onTap: (){},),
              NewsListTile(text1: "Apple Watch detects irregular heart beat in ", text2: "Reuters * 3 days ago", text3: "large U.S study", onTap: (){},),
              NewsListTile(text1: "Trump urges General Motors to reopen Ohio", text2: "Reuters * 12 days ago", text3: "plant in tweet", onTap: (){},),
              NewsListTile(text1: "Why the worst may already be over for the ", text2: "Bloomberg * 12 days ago", text3: "global economy", onTap: (){},),
          
              
            ],
          ),
        )
    );
  }
}
