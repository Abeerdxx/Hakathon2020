import 'package:flutter/material.dart';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'rounded_button.dart';
import 'constans.dart';
import 'registration.dart';
import 'wokerLogin.dart';
import 'registrationAl.dart';
import 'logInAl.dart';

class WorkerLog extends StatefulWidget {
  static String id = 'WelcomeScreen';
  @override
  _WorkerLogState createState() => _WorkerLogState();
}

class _WorkerLogState extends State<WorkerLog>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(controller);

    controller.forward();
    controller.addListener(() {
      //print(animation.value);
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('assets/images/worker.png'),
                    height: 60.0,
                  ),
                ),
                TypewriterAnimatedTextKit(
                  text: ['Please choose'],
                  textStyle: titoli,
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            Container(
              margin: EdgeInsets.all(4.0),
              height: 100,
              width: 50,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey[300],
                      blurRadius:
                          10.0, // has the effect of softening the shadow
                      spreadRadius:
                          5.0, // has the effect of extending the shadow
                      offset: Offset(
                        0.0, // horizontal, move right 10
                        2.0, // vertical, move down 10
                      ))
                ],
                color: secondary,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: RoundedButton(
                color: secondary,
                onPressed: () {
                  // Navigator.pushNamed(context, LoginScreen.id);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                title: 'Log In',
              ),
            ),
            Container(
              margin: EdgeInsets.all(4.0),
              height: 100,
              width: 50,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey[300],
                      blurRadius:
                          10.0, // has the effect of softening the shadow
                      spreadRadius:
                          5.0, // has the effect of extending the shadow
                      offset: Offset(
                        0.0, // horizontal, move right 10
                        2.0, // vertical, move down 10
                      ))
                ],
                color: secondary,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: RoundedButton(
                color: secondary,
                onPressed: () {
                  // Navigator.pushNamed(context, RegistrationScreen.id);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RegistrationScreen()),
                  );
                },
                title: 'Register',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
