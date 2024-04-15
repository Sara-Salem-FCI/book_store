import 'package:bookly/core/utils/constants.dart';
import 'package:flutter/material.dart';

abstract class AppStyles{
  static const TextStyle activeStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: kActiveColor,
    overflow: TextOverflow.ellipsis,
  );
  static const TextStyle inActiveStyle = TextStyle(
    fontSize: 15,
    color: kInactiveColor,
  );
}