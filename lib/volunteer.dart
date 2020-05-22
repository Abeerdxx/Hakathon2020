import 'package:flutter/material.dart';
import 'constans.dart';
import 'package:flutter/cupertino.dart';
import 'volunteerOrdersByRegion.dart';

class Volunteer extends StatefulWidget {
  @override
  _VolunteerState createState() => _VolunteerState();
}

class _VolunteerState extends State<Volunteer> {
  String region;
  @override
  Widget build(BuildContext context) {
    CupertinoPicker getPickerAddress() {
      List<Text> myItems = [];
      for (String address in AddressList) {
        var newItem = Text(address);
        myItems.add(newItem);
      }

      return CupertinoPicker(
        itemExtent: 32.0,
        onSelectedItemChanged: (selectedIndex) {
          setState(() {
            region = AddressList[selectedIndex];
          });
        },
        children: myItems,
      );
    }

    return Scaffold(
        backgroundColor: primary,
        body: Center(
            child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'Choose your region and press CONTINUE',
                    textAlign: TextAlign.center,
                    style: titoli,
                  ),
                ),
              ),
              Form(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 400,
                        height: 60,
                        decoration: BoxDecoration(
                          color: secondary,
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Row(
                          children: <Widget>[
                            SizedBox(
                              width: 20.0,
                            ),
                            Icon(Icons.home, size: 20.0, color: Colors.grey),
                            SizedBox(
                              width: 10.0,
                            ),
                            Container(
                              decoration: BoxDecoration(color: Colors.grey),
                              width: 1.0,
                              height: 30.0,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            SizedBox(
                              width: 228,
                              child: getPickerAddress(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
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
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => VolunteerOrdersByRegion())),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 32.0,
                            vertical: 20.0,
                          ),
                          child: Text(
                            'CONTINUE',
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
            ],
          ),
        )));
  }
}
