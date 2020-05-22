import 'package:flutter/material.dart';
import 'constans.dart';
import 'main.dart';
import 'StuffList.dart';

class FruitsPage extends StatefulWidget {
  @override
  _FruitsPageState createState() => _FruitsPageState();
}

class _FruitsPageState extends State<FruitsPage> {
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
                          onPressed: () { if(!map1.containsKey('Cherries')) map1['Cherries']=1;
                          else map1['Cherries']=map1['Cherries']+1; },
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
                                        "assets/images/cherries_small.jpg"),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text('Cherries',
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
                        onPressed: () { if(!map1.containsKey('Cranberries')) map1['Cranberries']=1;
                        else map1['Cranberries']=map1['Cranberriesi']+1; },
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
                                      "assets/images/Cranberriesforwebsite1.jpg"),
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text('Cranberries',
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
                        onPressed: () { if(!map1.containsKey('Acerola')) map1['Acerola']=1;
                        else map1['Acerola']=map1['Acerola']+1; },
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
                                          "assets/images/acerola_small.gif"))),
                              //Image.asset('images/female.png',height: 100.0,width: 100.0,),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text('Acerola',
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
                          onPressed: () { if(!map1.containsKey('Apple')) map1['Apple']=1;
                          else map1['Apple']=map1['Apple']+1; },
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
                                            "assets/images/apple_small.gif"))),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text('Apple',
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

                        onPressed: () { if(!map1.containsKey('Kiwi')) map1['Kiwi']=1;
                        else map1['Kiwi']=map1['Kiwi']+1; },
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
                                          "assets/images/kiwi_small.gif"))),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text('Kiwi',
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
                        onPressed: () { if(!map1.containsKey('Grapes')) map1['Grapes']=1;
                        else map1['Grapes']=map1['Grapes']+1; },

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
                                          "assets/images/grapes_small.jpg"))),
                              //Image.asset('images/female.png',height: 100.0,width: 100.0,),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text('Grapes',
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
                          onPressed: () { if(!map1.containsKey('Apricot')) map1['Apricot']=1;
                          else map1['Apricot']=map1['Apricot']+1; },

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
                                        "assets/images/apricot.jpg"),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text('Apricot',
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
                          onPressed: () { if(!map1.containsKey('Loquat')) map1['Loquat']=1;
                          else map1['Loquat']=map1['Loquat']+1; },
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
                                        "assets/images/loquat_small.gif"),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text('Loquat',
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
                        onPressed: () { if(!map1.containsKey('Coconut')) map1['Coconut']=1;
                        else map1['Coconut']=map1['Coconut']+1; },
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
                                          "assets/images/coconutmeat_small.gif"))),
                              //Image.asset('images/female.png',height: 100.0,width: 100.0,),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text('Coconut',
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