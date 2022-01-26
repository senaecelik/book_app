// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class UIContainerStyle {
  static UIContainerStyle instance = UIContainerStyle._init();

  UIContainerStyle._init();

  final BoxDecoration UIBoxDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(40),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: const Offset(0, 3), // changes position of shadow
      ),
    ],
    color: Colors.white,
  );

  final BoxDecoration UIBoxDecorationGrey = BoxDecoration(
    color: Colors.grey.withOpacity(0.5),
    borderRadius: BorderRadius.circular(40),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 10,
        offset: const Offset(0, 3), // changes position of shadow
      ),
    ],
  );
}
