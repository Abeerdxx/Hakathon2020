import 'package:flutter/material.dart';
import 'constans.dart';
import 'volunteer.dart';
import 'odlInfo.dart';
import 'volunteerOrdersByRegion.dart';
import 'workerLog.dart';
import 'donate.dart';
import 'DonationService.dart';
import 'viewStory.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    DonationService d = DonationService();
    print(d.getDonations);
    return Container(
      color: primary,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              color: primary,
              height: 50,
              child: Column(
                children: <Widget>[
                  Container(
                    margin:
                        EdgeInsets.only(bottom: 15.0, left: 10.0, right: 10.0),
                    child: Center(
                      child: Text('Please Choose',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Averta',
                              fontWeight: FontWeight.bold,
                              fontSize: 28.0,
                              color: Colors.black)),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                        flex: 1,
                        child: FlatButton(
                          color: primary,
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      VolunteerOrdersByRegion())),
                          child: Container(
                            margin: EdgeInsets.all(4.0),
                            height: 250,
                            width: 150,
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
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Center(
                                  child: Image(
                                    image:
                                        new AssetImage("assets/images/v2.jpg"),
                                  ),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Text('Volunteer',
                                    style: TextStyle(
                                        fontFamily: 'Averta',
                                        fontSize: 16.0,
                                        color: Colors.black)),
                              ],
                            ),
                          ),
                        )),
                    Expanded(
                      flex: 1,
                      child: FlatButton(
                        color: primary,
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyFormsPage())),
                        child: Container(
                          margin: EdgeInsets.all(4.0),
                          height: 250,
                          width: 150,
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
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Center(
                                  child: Image(
                                      image: new AssetImage(
                                          "assets/images/elder5.png"))),
                              //Image.asset('images/female.png',height: 100.0,width: 100.0,),
                              SizedBox(
                                height: 20.0,
                              ),
                              Text('Elder',
                                  style: TextStyle(
                                      fontFamily: 'Averta',
                                      fontSize: 16.0,
                                      color: Colors.black)),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                        flex: 1,
                        child: FlatButton(
                          color: primary,
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Donation())),
                          child: Container(
                            margin: EdgeInsets.all(4.0),
                            height: 250,
                            width: 150,
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
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Center(
                                    child: Image(
                                        image: new AssetImage(
                                            "assets/images/donate.png"))),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Text('Donate',
                                    style: TextStyle(
                                        fontFamily: 'Averta',
                                        fontSize: 16.0,
                                        color: Colors.black)),
                              ],
                            ),
                          ),
                        )),
                    Expanded(
                      flex: 1,
                      child: FlatButton(
                        color: primary,
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WorkerLog())),
                        child: Container(
                          margin: EdgeInsets.all(4.0),
                          height: 250,
                          width: 150,
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
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Center(
                                  child: Image(
                                      image: new AssetImage(
                                          "assets/images/worker.png"))),
                              //Image.asset('images/female.png',height: 100.0,width: 100.0,),
                              SizedBox(
                                height: 20.0,
                              ),
                              Text('Unemployment?',
                                  style: TextStyle(
                                      fontFamily: 'Averta',
                                      fontSize: 16.0,
                                      color: Colors.black)),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            Column(
              children: <Widget>[
                FloatingActionButton(
                  onPressed: () => Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home())),
                  child: Icon(Icons.camera),
                ),
                Text(
                  'Our Stories',
                  style: titoli.copyWith(fontSize: 14),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
