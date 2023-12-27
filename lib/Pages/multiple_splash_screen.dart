import 'package:financeapp/Pages/welcome_page.dart';
import 'package:financeapp/onBordingScreens/page2.dart';
import 'package:financeapp/onBordingScreens/page3.dart';
import 'package:financeapp/onBordingScreens/page4.dart';
import 'package:financeapp/onBordingScreens/page5.dart';
import 'package:financeapp/onBordingScreens/page6.dart';
import 'package:financeapp/onBordingScreens/page7.dart';
import 'package:financeapp/onBordingScreens/page8.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  //Controller for page tracking
  final PageController _controller = PageController(initialPage: 0);
  //track of last page
  bool atLastPage = false;


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children : [
          PageView(
            controller: _controller,
            onPageChanged: (index){
              setState(() {
                atLastPage = (index == 6);
              });

            },
          children: const [

            SecondPage(),
            ThirdPage(),
            FourthPage(),
            FifthPage(),
            SixthPage(),
            SeventhPage(),
            EighthPage(),

          ],
        ),
           Container(
              alignment:const Alignment(0,0.80) ,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      _controller.jumpToPage(6);
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.transparent,
                    ),
                    child: const Text("Skip",style: TextStyle(fontSize: 10),),
                  ),
                  SizedBox(
                    height: 20.0,
                    // Adjust the height of the container to change the indicator size
                    child: SmoothPageIndicator(
                      controller: _controller,

                      count: 7,
                      onDotClicked: (index){
                        _controller.animateToPage(
                          index,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      },
                      effect: const JumpingDotEffect( //Expending,Swaping and jumping DotsEffects
                        dotHeight: 10,
                        dotWidth: 10,
                        dotColor: Colors.white,

                        verticalOffset: 12, //Only comes with JumpingDotEffect
                      ),

                    ),
                  ),
                  if (atLastPage != true) ...{
                    ElevatedButton(
                      onPressed: () {
                        _controller.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn,
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.transparent,
                      ),
                      child: const Text("Next",style: TextStyle(fontSize: 10),),
                    ),
                  } else ...{
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const WelcomePage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.transparent,
                      ),
                      child: const Text("Continue",style: TextStyle(fontSize: 10),),
                    ),
                  },
                ],
              ),
           ),
        ],
      ),

    );
  }
}


             /*Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(onPressed: (){
                    _controller.jumpToPage(7);
                  },style: ElevatedButton.styleFrom(foregroundColor: Colors.white, backgroundColor: Colors.transparent,), child: const Text("Skip")),

                  

                  // previous
                  /*GestureDetector(
                      onTap: (){
                        _controller.jumpTo(7);
                      },
                    child: const Text("Skip",style: TextStyle(color: Colors.white),),),*/
                  SizedBox(width:400,child: SmoothPageIndicator(controller: _controller, count: 8,)),
                  //next
                  /*atLastPage?
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const WelcomePage()),);
                    },
                    child: const Text("Done",style: TextStyle(color: Colors.white),),)
                  : GestureDetector(
                    onTap: (){
                      _controller.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
                    },
                    child: const Text("Next",style: TextStyle(color: Colors.white),),),*/
                  if(atLastPage != true)...
                  {
                    ElevatedButton(onPressed: () {
                      _controller.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    },style: ElevatedButton.styleFrom(foregroundColor: Colors.white,backgroundColor: Colors.transparent), child: const Text("Next")),
                  }
                  else...
                    {
                      ElevatedButton(onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const WelcomePage()),);

                      },style: ElevatedButton.styleFrom(foregroundColor: Colors.white,backgroundColor: Colors.transparent), child: const Text("Continue")),
                    }

                ],
              ),*/
