import 'package:financeapp/home_multiple_pages/bankAccount.dart';
import 'package:financeapp/home_multiple_pages/expense.dart';
import 'package:financeapp/home_multiple_pages/h_ome.dart';
import 'package:financeapp/home_multiple_pages/more.dart';
import 'package:financeapp/home_multiple_pages/portfolio.dart';
import 'package:flutter/material.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  State<MyHomeScreen> createState() => _State();
}

class _State extends State<MyHomeScreen> {
  int currentIndex = 0;

  final List<Widget> screens = [
    HOmeScreen(),
    Expense(),
    Portfolio(),
    BankAccount(),
    More(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex], // Show the currently selected page
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          // Set the new selected index and rebuild the widget
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 50,
              width: 30,
              child: Image.network("https://cdn.iconscout.com/icon/free/png-512/free-home-9286527-7567665.png?f=webp&w=512",),
            ),
            label: "Home",),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 50,
              width: 30,
              child: Image.network("https://cdn.iconscout.com/icon/free/png-512/free-devotion-1817284-1538153.png?f=webp&w=512",),), label: "Expense",),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 50,
              width: 30,
              child: Image.network("https://cdn.iconscout.com/icon/free/png-512/free-currency-financial-money-price-indian-rupee-finance-copy-13-1392.png?f=webp&w=512",),), label: "Portfolio",),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 50,
              width: 30,
              child: Image.network("https://cdn.iconscout.com/icon/free/png-512/free-bank-banking-finance-government-safe-secure-money-8-6381.png?f=webp&w=512",),), label: "Bank Account",),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 50,
              width: 30,
              child: Image.network("https://cdn.iconscout.com/icon/free/png-512/free-dots-three-3601836-3003578.png?f=webp&w=256",),), label: "More",),

        ],
      ),
    );
  }
}
