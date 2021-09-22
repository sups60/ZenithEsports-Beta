// import 'package:Zenith_Esports_Nepal/loginscreen.dart';
import 'package:Zenith_Esports_Nepal/main.dart';
// import 'package:Zenith_Esports_Nepal/main.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          // color: Colors.amber,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                child: Image.asset("assets/logo.png"),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Zenith Esports Nepal ",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              SizedBox(
                height: 100,
              ),
              CircularProgressIndicator(
                backgroundColor: Colors.white,
              ),
              SizedBox(
                height: 100,
              ),
              Text(
                "© Zenith Esports Nepal ",
                style: TextStyle(fontSize: 12, color: Colors.white),
              )
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.blueAccent,
          ),
        ),
      ),
    );
  }
}
