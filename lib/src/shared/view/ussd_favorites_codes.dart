import 'package:easy_ussd/ussd_exporter.dart';
import 'package:flutter/material.dart';

class USSDFavoritesCodes {
  USSDCode code;
  StatelessWidget widget;

  USSDFavoritesCodes({
    required this.code,
    required this.widget,
  });

  @override
  String toString() {
    return code.key;
  }
}
