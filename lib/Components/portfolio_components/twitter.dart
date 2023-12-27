import 'package:financeapp/Components/portfolio_components/twitter_list_title.dart';
import 'package:financeapp/Components/universaluse/single_text_title.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../Graph/line_chart.dart';

class Twitter extends StatelessWidget {
  const Twitter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Your Stocks",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Center(
                child: Container(
                  color: Colors.white,
                  height: 400,
                  child: const Padding(
                    padding: EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
                    child: CustomLineChart(
                      xMin: 0,
                      xMax: 6,
                      yMin: 1000,
                      yMax: 15000,
                      spots: [
                        FlSpot(0, 5000),
                        FlSpot(0.5, 14000),
                        FlSpot(1, 5000),
                        FlSpot(1.5, 12500),
                        FlSpot(2, 3000),
                        FlSpot(2.6, 13500),
                        FlSpot(3.3, 8000),
                        FlSpot(3.9, 9000),
                        FlSpot(4.2, 5000),
                        FlSpot(4.6, 6000),
                        FlSpot(5.6, 12500),
                        FlSpot(6, 11000),
                      ],
                      titlesData: FlTitlesData(
                          show: true,
                          leftTitles: AxisTitles(
                              sideTitles: SideTitles(showTitles: false)),
                          topTitles: AxisTitles(
                              sideTitles: SideTitles(showTitles: false)),
                          bottomTitles: AxisTitles(
                              sideTitles: SideTitles(
                            showTitles: false,
                          ),),),
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    TextButton(onPressed: (){}, child: const Text("1D",style: TextStyle(color: Colors.black),),),
                    TextButton(onPressed: (){}, child: const Text("1W",style: TextStyle(color: Colors.black),),),
                    TextButton(onPressed: (){}, child: const Text("1M",style: TextStyle(color: Colors.black),),),
                    TextButton(onPressed: (){}, child: const Text("3M",style: TextStyle(color: Colors.black),),),
                    TextButton(onPressed: (){}, child: const Text("1Y",style: TextStyle(color: Colors.black),),),
                    TextButton(onPressed: (){}, child: const Text("ALL",style: TextStyle(color: Colors.black),),),

                  ],
                ),
              ),
              const SizedBox(height: 10,),
              const SingleText(text1: "Your Position"),
              const TwitterTile1(text1: "5.0", text2: "\$955.00", subText1: "SHARES", subText2: "EQUITY"),
              const TwitterTile1(text1: "171.46", text2: "7.12%", subText1: "Avg Cost", subText2: "Portfolio Diversity"),
              Container(height: 50,
                color: Colors.white,
                child: const Padding(
                  padding: EdgeInsets.only(left: 20,right: 20),
                  child: Row(
                    children: [

                      Text("Today's Return",style: TextStyle(color: Colors.grey),),
                      Spacer(),
                      Text("-\$20.45 (-2.10%)")
                    ],
                  ),
                ),
              ),
              Container(height: 50,
                color: Colors.white,
                child: const Padding(
                  padding: EdgeInsets.only(left: 20,right: 20),
                  child: Row(
                    children: [

                      Text("Total Return",style: TextStyle(color: Colors.grey),),
                      Spacer(),
                      Text("-\$97.17 (+11.40%)")
                    ],
                  ),
                ),
              ),

              Container(color:Colors.white,child: const SizedBox(height: 30,)),

              Container(
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [
                    ClipRRect(borderRadius: BorderRadius.circular(10),child: Container(height:40,width: 150,color: Colors.indigoAccent,
                        child: ElevatedButton(onPressed: () {
                          //Navigator.push(context, MaterialPageRoute(builder: (context)=>const LinkNewAccount()));
                        },style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent, elevation: 0), child: const Text("Buy",style: TextStyle(color: Colors.white,fontSize: 15),),))),

                    ClipRRect(borderRadius: BorderRadius.circular(10),child: Container(height:40,width: 150,color: Colors.indigoAccent,
                        child: ElevatedButton(onPressed: () {
                          //Navigator.push(context, MaterialPageRoute(builder: (context)=>const LinkNewAccount()));
                        },style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent, elevation: 0), child: const Text("Sell",style: TextStyle(color: Colors.white,fontSize: 15),),)))

                  ],
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}
