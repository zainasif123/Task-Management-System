import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:tms/auth/main_page.dart';
import 'package:tms/const/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    //SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Lottie.asset('animation/animation.json',
        height: 400,
        width: 400,
        frameRate: FrameRate(60.0),
        repeat: true,
        reverse: true);

    Future.delayed(Duration(seconds: 8), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => Main_Page()));
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
    //   overlays: SystemUiOverlay.values);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: custom_green,
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [custom_green, backgroundColors],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Task Management \n         System",
                    style: TextStyle(
                      fontSize: 38.0,
                      fontWeight: FontWeight.bold,
                      color: backgroundColors,
                      letterSpacing: 2.0,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          blurRadius: 4,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Center(
                child: Lottie.asset('animation/animation.json',
                    height: 400,
                    width: 400,
                    frameRate: FrameRate(60.0),
                    repeat: true,
                    reverse: true),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
