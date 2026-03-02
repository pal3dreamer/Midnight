import 'package:flutter/material.dart';
import "package:smooth_page_indicator/smooth_page_indicator.dart";
import "package:task_manager/navigation/navigation_screen.dart";
import "intro_screens/intro_1.dart";
import "intro_screens/intro_2.dart";
import "intro_screens/intro_3.dart";
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  // create pagecontroller
    PageController _controller = PageController();
    // keep track if we're on the last page or nah
    bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // stack allows overlay, pageview doesn't
        body: Stack(
            children: [
                PageView(
                onPageChanged:(index) {
                  setState(() {
                    onLastPage = (index == 2);
                  });
                },
                controller: _controller,
                children: [
                Intro1(),
                Intro2(),
                Intro3(),
                ]
                ),
                // dot indicators
                Container(
                    alignment: Alignment(0, 0.5),
                    child: Row
                    ( 
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [ 
                        GestureDetector(
                          onTap: () { _controller.jumpToPage(2);
                          },
                        
                        child: Text("skip"),
                        ),
                        SmoothPageIndicator(controller: _controller, count: 3),



                        onLastPage ?
                        GestureDetector(
                        onTap: () { 
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                            return NavigationScreen();}));
                          
                        },
                        
                        child: Text("done"),
                        )
                        : GestureDetector(
                        onTap: () {_controller.nextPage(
                            duration: Duration(milliseconds: 500), 
                          curve: Curves.decelerate);
                          
                        },
                        
                        child: Text("next"),
                    )] 
                      ,
                      ),
                )
            ],
        ),
    );
  }
}