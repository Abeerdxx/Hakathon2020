import 'WelcomePage.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'constans.dart';

Future<void> showAlertConfirmationButton(BuildContext context) {
  bool orderCompleted = false;

  var alertStyle = AlertStyle(
    overlayColor: Colors.black54,
    backgroundColor: primary,
    animationType: AnimationType.fromBottom,
    isCloseButton: false,
    isOverlayTapDismiss: false,
    titleStyle:
        TextStyle(fontFamily: 'Averta', fontSize: 24.0, color: Colors.black),
    descStyle:
        TextStyle(fontFamily: 'Averta', fontSize: 14.0, color: Colors.black),
    animationDuration: Duration(milliseconds: 500),
    alertBorder: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
      side: BorderSide(
        color: Colors.grey,
      ),
    ),
  );

  return Alert(
    style: alertStyle,
    context: context,
    type: AlertType.warning,
    title: "ACCEPTANCE CONFIRMATION",
    desc: "The order will be removed",
    buttons: [
      DialogButton(
        radius: BorderRadius.circular(20.0),
        color: Colors.green[300],
        child: Text(
          "OK",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => WelcomePage()));
        },
      ),
    ],
  ).show();
}
