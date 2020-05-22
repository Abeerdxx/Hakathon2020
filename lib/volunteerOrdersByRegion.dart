import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'sheetData.dart';
import 'constans.dart';
import 'package:flutter/cupertino.dart';

final _firestore = Firestore.instance;
final _auth = FirebaseAuth.instance;
FirebaseUser loggedInUser;

class VolunteerOrdersByRegion extends StatefulWidget {
  @override
  _VolunteerOrdersByRegionState createState() =>
      _VolunteerOrdersByRegionState();
}

class _VolunteerOrdersByRegionState extends State<VolunteerOrdersByRegion> {
  String region;
  void getCurrentUser() async {
    try {
      final user = await _auth.currentUser();
      if (user != null) {
        loggedInUser = user;
      } else {
        loggedInUser = null;
      }
    } catch (e) {
      print(e);
    }
  }

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

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      appBar: AppBar(
        title: Text('Orders'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          OrdersStream(
            region: region,
          ),
        ],
      ),
    );
  }
}

class OrdersStream extends StatelessWidget {
  final String region;
  OrdersStream({this.region});
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _firestore.collection('orders').snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.lightBlueAccent,
            ),
          );
        }
        final orders = snapshot.data.documents.reversed;
        List<OrderBubble> ordersBubbles = [];
        for (var Order in orders) {
          final name = Order.data['name'];
          final phone = Order.data['phone'];
          final region = Order.data['region'];
          final details = Order.data['address'];
          final id = Order.documentID;

          final ordersBubble = OrderBubble(
            name: name,
            details: details,
            phone: phone,
            region: region,
            id: id,
          );

          ordersBubbles.add(ordersBubble);
        }
        return Expanded(
          child: ListView(
            reverse: true,
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
            children: ordersBubbles,
          ),
        );
      },
    );
  }
}

class OrderBubble extends StatelessWidget {
  OrderBubble({this.name, this.region, this.phone, this.details, this.id});

  final String name;
  final String region;
  final String phone;
  final String details;
  final String id;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4.0),
      height: 100,
      width: 50,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.grey[300],
              blurRadius: 10.0, // has the effect of softening the shadow
              spreadRadius: 5.0, // has the effect of extending the shadow
              offset: Offset(
                0.0, // horizontal, move right 10
                2.0, // vertical, move down 10
              ))
        ],
        color: secondary,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: InkWell(
        onTap: () {
          showModalBottomSheet(
              context: context,
              elevation: 400.0,
              backgroundColor: Colors.transparent,
              builder: (builder) {
                return buildBottomSheet(
                    context, name, phone, region, details, id);
              });
        },
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                region,
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.black54,
                ),
              ),
              Material(
                color: Colors.white,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  child: Text(
                    '$name order',
                    style: titoli,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
