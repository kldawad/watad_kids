import 'package:flutter/material.dart';

final kRegistrationButton = ButtonStyle(
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
    ),
  ),
  padding: MaterialStateProperty.all(
    EdgeInsets.symmetric(horizontal: 50, vertical: 15),
  ),
);
