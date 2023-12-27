import 'package:financeapp/Components/universaluse/single_text_title.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../Components/pie_chart.dart';
import '../Components/portfolio_components/two_item_title.dart';
import '../Components/universaluse/box_with_colorNmae.dart';
import 'expense2.dart';

class Expense extends StatelessWidget {
  const Expense({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text("Expense",style: TextStyle(color: Colors.white),),
        centerTitle: true,

      ),

      //drawer: const MyDrawer(),

      body:   Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
              children: [


                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 400,


                        child: MyPieChart(pieData: [
                          PieChartSectionData(
                            color: Colors.blue,
                            value: 19, // Adjust the value as needed
                            title: '19% \n Restaurant', // Replace with your label
                            titleStyle: const TextStyle(color: Colors.white),
                            radius: 100,
                          ),
                          PieChartSectionData(
                            color: Colors.pinkAccent,
                            value: 25, // Adjust the value as needed
                            title: '25% \n Rent', // Replace with your label
                            titleStyle: const TextStyle(color: Colors.white),
                            radius: 100,
                          ),
                          PieChartSectionData(
                            color: Colors.pink,
                            value: 18, // Adjust the value as needed
                            title: '18% \n Gold', // Replace with your label
                            titleStyle: const TextStyle(color: Colors.white),
                            radius: 100,
                          ),

                          PieChartSectionData(
                            color: Colors.orangeAccent,
                            value: 18, // Adjust the value as needed
                            title: '18% \n Glossary', // Replace with your label
                            titleStyle: const TextStyle(color: Colors.white),
                            radius: 100,
                          ),

                          PieChartSectionData(
                            color: Colors.greenAccent,
                            value: 30, // Adjust the value as needed
                            title: '30% \n Drinks', // Replace with your label
                            titleStyle: const TextStyle(color: Colors.white),
                            radius: 100,
                          ),

                          PieChartSectionData(
                            color: Colors.yellow,
                            value: 10, // Adjust the value as needed
                            title: '10% \n Uber', // Replace with your label
                            titleStyle: const TextStyle(color: Colors.white),
                            radius: 100,
                          ),

                          //SizedBox(height: 16),


                        ],

                        ),



                      ),

                      Container(height: 10,color: Colors.white,),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,

                        children: [

                          BoxColorWord(text:"Restaurant", customColor: Colors.blue),
                          BoxColorWord(text: "Rent", customColor: Colors.pinkAccent),
                          BoxColorWord(text: "Gold", customColor: Colors.pink),
                          BoxColorWord(text: "Glossary", customColor: Colors.orangeAccent),
                          BoxColorWord(text: "Drinks", customColor: Colors.greenAccent),
                          BoxColorWord(text: "Uber", customColor: Colors.yellow),
                        ],
                      ),
                      Container(height: 10,color: Colors.white,),
                      const SizedBox(height: 10,),

                      const SingleText(text1: "Top Spending Categories",),
                      PortfolioTitle(text: 'HOME & UTILITIES', text2: '\$329,698 Spends', imageurl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcST4rKn6J4hp96oE3gx7_b8NYBT6wWkiPvoQg&usqp=CAU', onTap: () {},),
                      PortfolioTitle(text: 'TRAVEL', text2: '\$329,698 Spends', imageurl: 'data:image/png;base64,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', onTap: () {},),
                      PortfolioTitle(text: 'RIDE SHARING', text2: '\$329,698 Spends', imageurl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRomDUWkSHkGwzt5-sd1l6hhd5Sm_5uW1NyZQ&usqp=CAU', onTap: () {},),
                      PortfolioTitle(text: 'GROCERIES', text2: '\$329,698 Spends', imageurl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLFUzB3UWqmIlfmZDNzipcjKKfpJpssuwtHQ&usqp=CAU', onTap: () {},),
                      PortfolioTitle(text: 'DRINKS', text2: '\$329,698 Spends', imageurl: 'data:image/png;base64,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', onTap: () {},),
                      PortfolioTitle(text: 'RENT', text2: '\$329,698 Spends', imageurl: 'data:image/jpeg;base64,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', onTap: () {},),


                      const SizedBox(height: 10,),
                      Container(
                        color: Colors.white,
                        child: ListTile(
                          title: const Text("View all Expenses"),
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const Expense2()));
                          },

                          trailing: const Icon(Icons.chevron_right_rounded),
                        ),
                      ),

                    ],
                  ),
                ),




              ]
          ),
        ),
      ),
    );
  }
}
