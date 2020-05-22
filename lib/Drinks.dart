import 'package:flutter/material.dart';
import 'constans.dart';
import 'main.dart';
import 'StuffList.dart';

class DrinksPage extends StatefulWidget {
  @override
  _DrinkPageState createState() => _DrinkPageState();
}

class _DrinkPageState extends State<DrinksPage> {
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
                            if (!map1.containsKey('7Up'))
                              map1['7Up'] = 1;
                            else
                              map1['7Up'] = map1['7Up'] + 1;
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
                                    image:
                                        new AssetImage("assets/images/7up.jpg"),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text('7Up',
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
                            if (!map1.containsKey('Cola'))
                              map1['Cola'] = 1;
                            else
                              map1['Cola'] = map1['Cola'] + 1;
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
                                        "assets/images/cola.jpg"),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text('Cola',
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
                          if (!map1.containsKey('Fuzetea'))
                            map1['Fuzetea'] = 1;
                          else
                            map1['Fuzetea'] = map1['Fuzetea'] + 1;
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
                                          "assets/images/fuzetea.jpg"))),
                              //Image.asset('images/female.png',height: 100.0,width: 100.0,),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text('Fuzetea',
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
                            if (!map1.containsKey('Orange'))
                              map1['Orange'] = 1;
                            else
                              map1['Orange'] = map1['Orange'] + 1;
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
                                            "assets/images/orange.jpg"))),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text('Orange',
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
                            if (!map1.containsKey('watter'))
                              map1['watter'] = 1;
                            else
                              map1['watter'] = map1['watter'] + 1;
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
                                            "assets/images/water.jpg"))),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text('watter',
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
                          if (!map1.containsKey('Pepsi'))
                            map1['Pepsi'] = 1;
                          else
                            map1['Pepsi'] = map1['Pepsi'] + 1;
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
                                          "assets/images/pepsi.jpg"))),
                              //Image.asset('images/female.png',height: 100.0,width: 100.0,),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text('Pepsi',
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
                            if (!map1.containsKey('Bregat'))
                              map1['Bregat'] = 1;
                            else
                              map1['Bregat'] = map1['Bregat'] + 1;
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
                                        "assets/images/bregat.jpg"),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text('Bregat',
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
                            if (!map1.containsKey('Bregat2'))
                              map1['Bregat2'] = 1;
                            else
                              map1['Bregat2'] = map1['Bregat2'] + 1;
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
                                        "assets/images/bregatshkl.jpg"),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text('Bregat2',
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
                          if (!map1.containsKey('Shoko'))
                            map1['Shoko'] = 1;
                          else
                            map1['Shoko'] = map1['Shoko'] + 1;
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
                                          "assets/images/shoko.jpg"))),
                              //Image.asset('images/female.png',height: 100.0,width: 100.0,),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text('Shoko',
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
