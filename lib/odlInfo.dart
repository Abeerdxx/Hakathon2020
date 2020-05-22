import 'package:flutter/material.dart';
import 'constans.dart';
import 'package:flutter/cupertino.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'StuffList.dart';

final _firestore = Firestore.instance;

class MyFormsPage extends StatefulWidget {
  @override
  _MyFormsPageState createState() => _MyFormsPageState();
}

class _MyFormsPageState extends State<MyFormsPage> {
  var _formKey = GlobalKey<FormState>();
  String name;
  String phone;
  String address;
  String region = "Haifa";

  @override
  Widget build(BuildContext context) {
    TextEditingController _nameController = new TextEditingController();
    TextEditingController _phoneController = new TextEditingController();
    TextEditingController _addressController = new TextEditingController();
    _nameController.text = name;
    _addressController.text = address;
    _phoneController.text = phone;

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
                    'Fill the fields below and press CONTINUE',
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
                        width: 380,
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
                            Icon(Icons.person_outline,
                                size: 20.0, color: Colors.grey),
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
                              width: 200,
                              child: TextFormField(
                                onChanged: (value) {
                                  name = value;
                                },
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: 'Averta',
                                    color: Colors.black),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Name',
                                  hintStyle: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.grey,
                                      fontFamily: 'Averta'),
                                ),
                                // controller: _nameController,
//                                validator: (String value) {
//                                  if (value.isEmpty) {
//                                    return 'Please insert your name';
//                                  }
//                                },
                              ),
                            ),
                          ],
                        ),
                      ),
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
                            Icon(Icons.phone, size: 20.0, color: Colors.grey),
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
                              width: 200,
                              child: TextFormField(
                                onChanged: (value) {
                                  phone = value;
                                },
                                keyboardType: TextInputType.numberWithOptions(),
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: 'Averta',
                                    color: Colors.black),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Phone',
                                  hintStyle: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.grey,
                                      fontFamily: 'Averta'),
                                ),
                                controller: _phoneController,
//                                validator: (String value) {
//                                  if (value.isEmpty) {
//                                    return 'Please insert your Phone';
//                                  }
//                                },
                              ),
                            ),
                          ],
                        ),
                      ),
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
                              child: TextFormField(
                                onChanged: (value) {
                                  address = value;
                                },
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: 'Averta',
                                    color: Colors.black),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'address',
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontFamily: 'Averta'),
                                ),
                                controller: _addressController,
//                                validator: (String value) {
//                                  if (value.isEmpty) {
//                                    return 'Please choose your address';
//                                  }
//                                },
                              ),
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
                    onTap: () {
//                      setState(() {
//                        if (_formKey.currentState.validate()) {
//                          name = _nameController.text;
//                          address = _addressController.text;
//                          phone = _phoneController.text;
//
//                          // Navigator.push(context, MaterialPageRoute(builder: (context) => SpesaPage(boomerInfo: boomerInfo,)));
//                        }
//                      });
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Stuff(
                                    phone: phone,
                                    address: address,
                                    region: region,
                                    name: name,
                                  )));
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
