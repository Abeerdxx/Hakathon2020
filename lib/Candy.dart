import 'package:flutter/material.dart';
import 'constans.dart';
import 'main.dart';
import 'StuffList.dart';

class CandyPage extends StatefulWidget {
  @override
  _FruitsPageState createState() => _FruitsPageState();
}

class _FruitsPageState extends State<CandyPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: primary,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              color: primary,
              height: 80,
              child: Column(
                children: <Widget>[
                  Container(
                    margin:
                        EdgeInsets.only(bottom: 30.0, left: 10.0, right: 10.0),
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
                          onPressed: () {
                            if (!map1.containsKey('BeskZman'))
                              map1['BeskZman'] = 1;
                            else
                              map1['BeskZman'] = map1['BeskZman'] + 1;
                          },
                          child: Container(
                            margin: EdgeInsets.all(4.0),
                            height: 150,
                            width: 200,
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
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Center(
                                  child: Image(
                                    image: new AssetImage(
                                        "assets/images/besk.jpg"),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text('BeskZman',
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
                          onPressed: () {
                            if (!map1.containsKey('Elite Candy'))
                              map1['Elite Candy'] = 1;
                            else
                              map1['Elite Candy'] = map1['Elite Candy'] + 1;
                          },
                          child: Container(
                            margin: EdgeInsets.all(4.0),
                            height: 150,
                            width: 200,
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
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Center(
                                  child: Image(
                                    image: new AssetImage(
                                        "assets/images/elite.jpg"),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text('Elite Candy',
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
                        onPressed: () {
                          if (!map1.containsKey('KefKaf'))
                            map1['KefKaf'] = 1;
                          else
                            map1['KefKaf'] = map1['KefKaf'] + 1;
                        },
                        child: Container(
                          margin: EdgeInsets.all(4.0),
                          height: 150,
                          width: 200,
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
                                          "assets/images/kefkaf.jpg"))),
                              //Image.asset('images/female.png',height: 100.0,width: 100.0,),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text('KefKaf',
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
                          onPressed: () {
                            if (!map1.containsKey('Krembo'))
                              map1['Krembo'] = 1;
                            else
                              map1['Krembo'] = map1['Krembo'] + 1;
                          },
                          child: Container(
                            margin: EdgeInsets.all(4.0),
                            height: 150,
                            width: 200,
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
                                            "assets/images/krembo.jpg"))),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text('Krembo',
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
                          onPressed: () {
                            if (!map1.containsKey('Milki'))
                              map1['Milki'] = 1;
                            else
                              map1['Milki'] = map1['Milki'] + 1;
                          },
                          child: Container(
                            margin: EdgeInsets.all(4.0),
                            height: 150,
                            width: 200,
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
                                            "assets/images/milki.jpg"))),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text('Milki',
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
                        onPressed: () {
                          if (!map1.containsKey('Twix'))
                            map1['Twix'] = 1;
                          else
                            map1['Twix'] = map1['Twix'] + 1;
                        },
                        child: Container(
                          margin: EdgeInsets.all(4.0),
                          height: 150,
                          width: 200,
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
                                          "assets/images/twix.jpg"))),
                              //Image.asset('images/female.png',height: 100.0,width: 100.0,),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text('Twix',
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
                          onPressed: () {
                            if (!map1.containsKey('Marshmello'))
                              map1['Marshmello'] = 1;
                            else
                              map1['Marshmello'] = map1['Marshmello'] + 1;
                          },
                          child: Container(
                            margin: EdgeInsets.all(4.0),
                            height: 150,
                            width: 200,
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
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Center(
                                  child: Image(
                                    image: new AssetImage(
                                        "assets/images/mershmlo.jpg"),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text('Marshmello',
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
                          onPressed: () {
                            if (!map1.containsKey('Gili candy'))
                              map1['Gili candy'] = 1;
                            else
                              map1['Gili candy'] = map1['Gili candy'] + 1;
                          },
                          child: Container(
                            margin: EdgeInsets.all(4.0),
                            height: 150,
                            width: 200,
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
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Center(
                                  child: Image(
                                    image: new AssetImage(
                                        "assets/images/gomi.jpg"),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text('Gili candy',
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
                        onPressed: () {
                          if (!map1.containsKey('Energy'))
                            map1['Energy'] = 1;
                          else
                            map1['Energy'] = map1['Energy'] + 1;
                        },
                        child: Container(
                          margin: EdgeInsets.all(4.0),
                          height: 150,
                          width: 200,
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
                                          "assets/images/energy.jpg"))),
                              //Image.asset('images/female.png',height: 100.0,width: 100.0,),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text('Energy',
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
          ],
        ),
      ),
    );
  }
}
