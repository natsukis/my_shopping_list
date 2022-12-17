library constants;

import 'package:flutter/material.dart';
import 'package:my_shopping_list/core/constants/shopping_styles.dart';

const textInputDecoration = InputDecoration(
  filled: true,
  hintStyle: TextStyle(fontSize: 14),
  fillColor: Color(0xFFEEEEEE),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(30)),
    borderSide: BorderSide(width: 2, color: Colors.white),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(30)),
    borderSide: BorderSide(width: 2, color: Colors.white),
  ),
);

const textInputDecorationNewAccount = InputDecoration(
  filled: true,
  hintStyle: TextStyle(fontSize: 14),
  fillColor: Color(0xFFBDBDBD),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(30)),
    borderSide: BorderSide(color: Color(0xFFBDBDBD)),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(30)),
    borderSide: BorderSide(color: Color(0xFFBDBDBD)),
  ),
);

const profileStyleTextButton = TextStyle(color: Colors.white, fontSize: 15);
const homeStyleTextButton = TextStyle(color: ShoppingStyles.greyHome, fontSize: 13);
