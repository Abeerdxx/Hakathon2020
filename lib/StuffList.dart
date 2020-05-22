import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hakathon2020/Candy.dart';
import 'package:hakathon2020/vegetables.dart';
import 'Fruit.dart';
import 'vegetables.dart';
import 'Candy.dart';
import 'Drinks.dart';
import 'WelcomePage.dart';
import 'constans.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final _firestore = Firestore.instance;

Map<String, int> map1 = {};

class Stuff extends StatelessWidget {
  final String name;
  final String address;
  final String region;
  final String phone;

  Stuff({this.phone, this.name, this.region, this.address});
  @override
  Widget build(BuildContext context) {
    map1.clear();
    return Material(
      child: Container(
        color: primary,
        child: ListView(padding: EdgeInsets.zero, children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
            child: Text(
              'choose category',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.brightness_1),
            title: Text(
              'Fruit',
              style: testi,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FruitsPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.brightness_1),
            title: Text(
              'vegetables',
              style: testi,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => VegetablesPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.brightness_1),
            title: Text(
              'Drinks',
              style: testi,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DrinksPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.brightness_1),
            title: Text(
              'Candy',
              style: testi,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CandyPage()));
            },
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Material(
              elevation: 10.0,
              shadowColor: Colors.black45,
              shape: StadiumBorder(),
              clipBehavior: Clip.antiAlias,
              color: colorNextButton,
              child: InkWell(
                onTap: () {
                  String details = "";
                  for (var k in map1.keys) {
                    details = details + "${map1[k]} $k, ";
                  }
                  _firestore.collection('orders').add({
                    'name': name,
                    'address': address,
                    'region': region,
                    'phone': phone,
                    'details': details,
                  });

                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => WelcomePage()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32.0,
                        vertical: 20.0,
                      ),
                      child: Text(
                        'FINISH',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Averta',
                            fontSize: 16.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
