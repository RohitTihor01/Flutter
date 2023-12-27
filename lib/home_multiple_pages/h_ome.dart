import 'package:financeapp/Components/universaluse/single_text_title.dart';
import 'package:financeapp/Components/universaluse/three_item_tile.dart';
import 'package:financeapp/Graph/line_chart.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';



class HOmeScreen extends StatefulWidget {
  const HOmeScreen({super.key});

  @override
  State<HOmeScreen> createState() => _HOmeScreenState();
}

class _HOmeScreenState extends State<HOmeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text("Home", style: TextStyle(color: Colors.white),),
        centerTitle: true,

      ),

      //drawer: const MyDrawer(),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(

              children: [
                Center(
                  child: Column(
                    children: [
                      Container(
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
                              FlSpot(0, 3000),
                              FlSpot(1, 4000),
                              FlSpot(1.5, 2000),
                              FlSpot(2, 12000),
                              FlSpot(2.25, 13500),
                              FlSpot(3, 8000),
                              FlSpot(3.25, 10000),
                              FlSpot(3.5, 7000),
                              FlSpot(4, 1000),
                              FlSpot(4.75, 7000),
                              FlSpot(5, 4000),
                              FlSpot(6, 1200),
                            ],
                            titlesData: FlTitlesData(
                              show: true,
                              leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                              topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                              bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: const Text("1D", style: TextStyle(color: Colors.black)),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text("1W", style: TextStyle(color: Colors.black)),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text("1M", style: TextStyle(color: Colors.black)),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text("3M", style: TextStyle(color: Colors.black)),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text("1Y", style: TextStyle(color: Colors.black)),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text("ALL", style: TextStyle(color: Colors.black)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                 /*Center(
                  child: Container(

                    color: Colors.white,
                      height: 400,
                      //width: 400,
                      child: const Padding(
                        padding: EdgeInsets.only(top: 8.0,left: 8.0,right: 8.0),
                        child: CustomLineChart(
                          xMin: 0,
                          xMax: 6,
                          yMin: 1000,
                          yMax: 15000,

                          spots: [
                            FlSpot(0, 3000),
                            FlSpot(1, 4000),
                            FlSpot(1.5, 2000),
                            FlSpot(2, 12000),
                            FlSpot(2.25, 13500),
                            FlSpot(3, 8000),
                            FlSpot(3.25, 10000),
                            FlSpot(3.5, 7000),
                            FlSpot(4, 1000),
                            FlSpot(4.75, 7000),
                            FlSpot(5, 4000),
                            FlSpot(6, 1200),
                          ], titlesData: FlTitlesData(
                            show: true,
                            leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                            bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: false,))
                          ),

                        ),
                      ),
                    //LineChartSample2(),
                    //LineChartCustom()
                  ),
                ),
                Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [

                      TextButton(onPressed: (){}, child: const Text("1D",style: TextStyle(color: Colors.black),),),
                      TextButton(onPressed: (){}, child: const Text("1W",style: TextStyle(color: Colors.black),),),
                      TextButton(onPressed: (){}, child: const Text("1M",style: TextStyle(color: Colors.black),),),
                      TextButton(onPressed: (){}, child: const Text("3M",style: TextStyle(color: Colors.black),),),
                      TextButton(onPressed: (){}, child: const Text("1Y",style: TextStyle(color: Colors.black),),),
                      TextButton(onPressed: (){}, child: const Text("ALL",style: TextStyle(color: Colors.black),),),

                    ],
                  ),
                ),*/


                const SizedBox(height: 10,),


                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [

                      const SingleText(text1: "Cash"),

                      TListTile(text: "WEALTHFRONT",
                          text2: "Personal saving",
                          onTap: () {},
                          imageurl: "https://styles.redditmedia.com/t5_36kvq/styles/communityIcon_kr1cmqazsl3b1.png",
                          text3: "\$92,875"),

                      TListTile(text: "BANK OF AMERICA",
                          text2: "BofA Checkings",
                          onTap: () {},
                          imageurl: "data:image/png;base64,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",
                          text3: "\$12,030"),

                      TListTile(text: "ROBINHOOD",
                          text2: "Robinhood Cash ",
                          onTap: () {},
                          imageurl: "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAZlBMVEUhzpn///8lz5oAy5IAy5EVzZYAzJX0/fr8//6e5s1Y162j58++7t33/vzH8eLa9uzj+PGM4sTp+vTN8uWE4MBd2K+Z5cpw3Lc+06N73rxH1Keq6dNr27V33rvD7+Ds+/a27NnT8+giHKosAAAHsElEQVR4nO2d6ZbqKhBGkxDQdp7a2Vbf/yVvKGIGA1Hv+Ui6erF/te06rXsVFFSBnij560RJ9LcJhvwJhvwJhvwJhvwJhvwJhvwJhvwJhvwJhvwJhvwJhvwJhvwJhvwJhvwJhvwJhvwJhvwJhvwJhvwJhvwJhvwJhvwJhvwJhvwJhvz5HYZSKiGUjJIkyn/C0b9hpqSOm9N6MYiJwWK2HQkF+/s9G0ohv8f3YfzM4Eui4tiroUg266adYbgTmBfp0VDu1w47wxIzUvszVKNWv4wjZKD2ZijOrwTjO2Sc9mUoLi8F43iECGJPhmLzhmA8QQSxH0OxfEcwHrI1TLdvCcbxN2CY9mH4tmA8BiwYPRimX+8KQrJp94YfCMYDjjEUHwjGMeDNdW34SQRjyIrYseH7ScZw4WYoPhSMl8wM39vJVNn+e6rp0lAcPhVELIgdGqrdx4K8DNW302OwWPwBQ2kpeKeLn9PyvI+ESB36X3wM5b7WkFnNTptRQo1Dky3TH6shn1wqk2n+nq/r8eFYUctRN6vhgY1hcs3e7mKy/U4abgaH4ZmLobystyMpRMWN2tzyOMofqonVcP/vr93VKK3IkVtyXt7uWWDXeX0k7IaAl+5210Zu39vb/JF2Fo9caTcccKoPtdx+N14PqgbTREdWW9oNEa2oLgylFGlyfpIjqOerTtIxD6eI9+bfUKjjcnK1zrIzRW8WuwwhTW/fhnI/c529xEs9BtNTTIaW1eIMObjwbPi0lalx04JUUEVWww3m8MmzoVo5BedaQNJ+NLEZnlLMW/BrmLrPzwZ6jsk9/bzX6ebp+TVI0K9h+vy2K5g0en38rMb1p1ewY26fhqqlpr9QGr2bB6PMsN6DGyawywoeDeXRLUiTrAhxtr+W9R4V5FzN4DOGzRX+wV0LqqIvtcsMa6dRoDRK+DNM505Bk2XKEG8yw2ob7obKMhpvhi+zTDQtHm9VVl+VT8+BEfRn2JZlaC8jKiEeZ4blsT5kN1riyTBf6Kz81LKM5qSqjSpgltF4MlT2rbbmqtcJVbuooIukYlYuoWPUl6Gjc0boSfgUYl3oJ/nPM2SW0XgxbLuIsKEQ1rerOrXISoSh+DBsW+p/KMs8FYOr7JdpGWEsXgzdSz2thI08qw+zBf0j0F22Kh4M05k7hKPmJMwYZr9N9dEFfBJGPgxVyyHhF43R5jFMZNZHxMWEBnDDtklImxVh6VdkBaL4ga+EBrihcFf1dLNC2u4k6vLpZiIMB21oi9ADWigSW+Nmp0vghRdBtKE1QjnUlxDWvkZWXOh7+l5Ax9DdWhvqp5V9LwA4CHWCNWzpPOmR6NyQn7gYti0UExqjjvN6yFVZB1DDlpJpqhcC5502zI1uO0hD4e5bmDHqXCo9pVECadi24aYx6lwqmRja7pPkUB4VY+fzgON6J8gYJk6DQ+sY9bLhLt8V0FC5qiZKJKnr3hPknqybTjKNfomWi5ceisIKUEP7fQpzhdK9kvhMMxF4lNrDtKLuoXsl8VIzlSANpf16pTZo2e343M9o/O9p6DDbvSMf4l7eDtRQ2Axou+aYoXFeNPoEa2hZELRBy17Ac5qJ0IbNUJFBS2fDc5qJwIaymUwpzbhb4L7TTIQ2bNxlJgP3bg5x9/AV2Bq/4aL/eOpOM353M/l7ghqKp0O1bXuaWfkfo3DD+qka9bBdnYsY8xHRl2ANn1KN/lyWdO9mvBZNBWDD2oic052SqUsQcYn7DcD9UlU10CtFS2F/6mIWwg2rJcS6faWYdjEJI3wMK/3CvWzdkHaxUmjAhpWDGV1TtPRmrt2MUbxhWSXRYu/u8u86GqToXFoePek80tzFFWBvdrUBXvHLaacfulsXA/ydCxdYQ1UMUn1e5uhqxIvTSHQmCK4tikFqKntbWXhf7rHfVvYKTxUwhbB5PXF9iDqMngFr+NihmRA+FRqzi+xcLwJ3E4vUSSGsbbnXh170InBH+HFn1ISwPMWYL7sfnAXQrv7KFsLreN+fXuTphFQ/MLNwOBmlZv8pgV+F+BFAw+LYgrYzOpEuNvnolEJ83xb9KAINix0MHaYN4tsx11OZ3hTyLR7/B+QozQXpoELu8vApcbxRzpmyH6XFJyZMcyIfnfuvR/rpKYRAw8eGZlZUDUpd7sWK0VcIkYb5+pdXDTLdn6pNqE1fKwbM8FHOU4MtG567e0UvXo/6CiHO8NGhodpdLWt70smxxzUfZphfxKD2S/3jkrfkj+xpjA59oUylCzwcJ531K+ygDPN6fqinW1lVDLaqt/n3AGWYf9r8VL39dN3074czTK/Fap8fXiwuaZ/TrwBlaC6a0AU2OmJb7XpNLxVAhvnUo1uUSTY+f0n8NCBDczRKS4UcXw+/JX4alCFt2cyHCpJOm4UvwRjmW7a+/5sFKyDDZb2q+E1gDM1nfXze1v7/gAz1eQXii7k8ADE009Dnh5f+AYzhtuxe/DoghjQN553cjvkciCEdG/bWpngBxDCZZfxSQVQuzQD8GS/0//89+SYY8icY8icY8icY8icY8icY8icY8icY8icY8icY8icY8icY8icY8icY8icY8icY8icY8icY8icY8icY8icY8icY8icY8icY8icY8icz/Ov8BxRgR6l/W94hAAAAAElFTkSuQmCC",
                          text3: " \$7,123"),

                      TListTile(text: "COINBASE PRO",
                          text2: "Coinbase USD ",
                          onTap: () {},
                          imageurl: "data:image/png;base64,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",
                          text3: "\$15,715"),

                      TListTile(text: "BANK OF AMERICA ",
                          text2: "BofA Checking",
                          onTap: () {},
                          imageurl: "data:image/png;base64,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",
                          text3: "\$12,030 "),


                      const SizedBox(height: 10,),
                      const SingleText(text1: "Investments"),

                      TListTile(text: "WEALTHFRONT",
                          text2: "Personal Investment ",
                          onTap: () {},
                          imageurl: "https://styles.redditmedia.com/t5_36kvq/styles/communityIcon_kr1cmqazsl3b1.png",
                          text3: "\$92,875"),
                      TListTile(text: "ROBINHOOD",
                          text2: "Robinhood Personal",
                          onTap: () {},
                          imageurl: "data:image/png;base64,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"
                          ,
                          text3: " \$7,123"),
                      TListTile(text: "COINBASE PRO",
                          text2: "Personal crypto",
                          onTap: () {},
                          imageurl: "data:image/png;base64,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",
                          text3: "\$15,712"),
                      TListTile(text: "FIDELITY",
                          text2: "401(K) ",
                          onTap: () {},
                          imageurl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCRFv-3lHCMxkY8K9huawZbe6AWhYe9_GsJw&usqp=CAU",
                          text3: "\$12,030"),
                      TListTile(text: "CHARLES SCHWAB",
                          text2: "231 Brokerage ",
                          onTap: () {},
                          imageurl: "data:image/jpeg;base64,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m+i5ktl9ZIY2xOcSxhJa3gCd/wA0npxK5ruSUtYYWPb/AND1W1s/hjqidkYBLbgvPANG/Xt3LZ2uq3Pq5d4DDkaN1g3T53PitGkxWojbljlcxt72B4rHWV8stude59r2ub2vZSwPMuM2toPfhxUNrGINmL3JudPLVXPk4rC5s0DtR7Q479HD5adpVTx3DXU874yCBc5T1s4WXzS4vURtDI5XsaOAOi+pcbqnWzTPOU3Gu47r+RKrbC9kzni1jw99FdJUxSU7I3Xu3jb01V5o6Z5wnJlOYxvIbbU9IuFh3Kr7JYRO6pidkc1rHBznEEDThr1rR/1BWfx5PxLFPjFS8WfNIQeGY2PgFWynmaHi43uPfVXS1cD3Rus7cAHDO3ip7lCxKOWWOOMh3NCTMRqMxy9Hwy+qqSL1aoYhEwMHD8KwVM5nlMh4oiIrVnREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREX/2Q==",
                          text3: "\$41,802"),


                    ],
                  ),
                )
              ]
          ),
        ),
      ),
    );
  }
}
