// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

abstract class Styles {
  static const TextStyle rowItemName = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 0.8),
    fontSize: 15,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle rowItem = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 0.8),
    fontSize: 18,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle profileTitle = TextStyle(
      color: Color.fromARGB(255, 6, 154, 212),
      fontSize: 30,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
      fontFamily: "Grotesque");

  static const TextStyle profileSubtitle = TextStyle(
      color: Color.fromRGBO(0, 0, 0, 1),
      fontSize: 18,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
      fontFamily: "Grotesque");

  static const TextStyle profileText = TextStyle(
      color: Color.fromRGBO(0, 0, 0, 1),
      fontSize: 15,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal,
      fontFamily: "Grotesque");

  static const TextStyle label = TextStyle(
    fontSize: 12,
    color: Color(0xFFC2C2C2),
    fontWeight: FontWeight.w300,
  );

  static const TextStyle deliveryTime = TextStyle(
    color: CupertinoColors.inactiveGray,
  );

  static const Color rowDivider = Color(0xFFD9D9D9);

  static const Color scaffoldBackground = Color(0xfff0f0f0);

  static const Color searchBackground = Color(0xffe0e0e0);

  static const Color searchCursorColor = Color.fromRGBO(0, 122, 255, 1);

  static const Color searchIconColor = Color.fromRGBO(128, 128, 128, 1);
}
