import 'package:flutter/material.dart';
import 'constans.dart';
import 'main.dart';
import 'StuffList.dart';


class VegetablesPage extends StatefulWidget {
  @override
  _FruitsPageState createState() => _FruitsPageState();
}

class _FruitsPageState extends State<VegetablesPage> {
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
                          onPressed: () { if(!map1.containsKey('Black Beans')) map1['Black Beans']=1;
                          else map1['Black Beans']=map1['Black Beans']+1; },
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
                                        "assets/images/black_beans.jpg"),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text('Black Beans',
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
                          onPressed: () { if(!map1.containsKey('Aubergine')) map1['Aubergine']=1;
                          else map1['Aubergine']=map1['Aubergine']+1; },
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
                                        "assets/images/aubergine.jpg"),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text('Aubergine',
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
                        onPressed: () { if(!map1.containsKey('Roasted')) map1['Roasted']=1;
                        else map1['Roasted']=map1['Roasted']+1; },
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
                                          "assets/images/roasted.jpg"))),
                              //Image.asset('images/female.png',height: 100.0,width: 100.0,),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text('Roasted',
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
                          onPressed: () { if(!map1.containsKey('Broccoli')) map1['Broccoli']=1;
                          else map1['Broccoli']=map1['Broccoli']+1; },
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
                                            "assets/images/broccoli.jpg"))),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text('Broccoli',
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
                          onPressed: () { if(!map1.containsKey('Brussels')) map1['Brussels']=1;
                          else map1['Brussels']=map1['Brussels']+1; },
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
                                            "assets/images/brussels_sprouts.jpg"))),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text('Brussels',
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
                        onPressed: () { if(!map1.containsKey('Red Cabbage')) map1['Red Cabbage']=1;
                        else map1['Red Cabbage']=map1['Red Cabbage']+1; },

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
                                          "assets/images/red-cabbage.webp"))),
                              //Image.asset('images/female.png',height: 100.0,width: 100.0,),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text('Red Cabbage',
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
                          onPressed: () { if(!map1.containsKey('Kohlrabi')) map1['Kohlrabi']=1;
                          else map1['Kohlrabi']=map1['Kohlrabi']+1; },
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
                                        "assets/images/kohlrabi.jpg"),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text('Kohlrabi',
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
                            onPressed: () { if(!map1.containsKey('alfalfa')) map1['alfalfa']=1;
                            else map1['alfalfa']=map1['alfalfa']+1; },
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
                                        "assets/images/alfalfa.jpg"),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text('alfalfa',
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
                        onPressed: () { if(!map1.containsKey('Savoy Cabbage')) map1['Savoy Cabbage']=1;
                        else map1['Savoy Cabbage']=map1['Savoy Cabbage']+1; },
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
                                          "assets/images/Savoy_cabbage.jpg"))),
                              //Image.asset('images/female.png',height: 100.0,width: 100.0,),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text('Savoy Cabbage',
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