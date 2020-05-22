import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hakathon2020/donate.dart';
import 'package:hakathon2020/wokerLogin.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'volunteerOrdersByRegion.dart';

TextEditingController emailController = new TextEditingController();
TextEditingController passwordController = new TextEditingController();
TextEditingController firstNameController = new TextEditingController();
TextEditingController lastNameController = new TextEditingController();

class Registration extends StatelessWidget {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    final firstName = TextField(
      controller: firstNameController,
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "First name",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final lastName = TextField(
      controller: lastNameController,
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Last name",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final emailField = TextField(
      controller: emailController,
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    //------------------------------------------------------------------------------
    final passwordField = TextField(
      controller: passwordController,
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Password",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final registerButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(32.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () async {
          try {
            final newUser = await _auth.createUserWithEmailAndPassword(
                email: emailController.text, password: passwordController.text);
            if (newUser != null) {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => VolunteerOrdersByRegion()),
              );
            }
          } catch (e) {
            Alert(
                    context: context,
                    title: "Error",
                    desc: "User already exists or wrong credentials")
                .show();
          }
        },
        child: Text("Register",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Register'),
        ),
        resizeToAvoidBottomPadding: false,
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 120.0,
                      child: Image.asset(
                        "assets/images/register.jpeg",
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    firstName,
                    SizedBox(height: 20.0),
                    lastName,
                    SizedBox(height: 20.0),
                    emailField,
                    SizedBox(height: 20.0),
                    passwordField,
                    SizedBox(
                      height: 10.0,
                    ),
                    registerButton,
                    SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
