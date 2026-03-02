import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:task_manager/features/auth/onboarding_screen.dart";

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState(); 
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
// TODO use go_router in the future to scale this
    Future.delayed(Duration(seconds: 2), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
        return OnboardingScreen();
      }));
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, 
    overlays: SystemUiOverlay.values);
    super.dispose();
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors:[Colors.blue, Colors.black], 
          begin: Alignment.topRight, 
          end: Alignment.bottomLeft,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.list,
              size: 100,
              color: Colors.white,
              
            ),
            SizedBox(height: 10),
            Text("Task Manager",
            style: TextStyle(
              fontStyle: FontStyle.normal,
              color: Colors.amber,
              fontSize: 30,
            ),)
          ],
        ),
      ),
    );
  }
}