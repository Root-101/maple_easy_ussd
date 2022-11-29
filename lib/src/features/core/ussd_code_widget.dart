import 'package:easy_ussd/ussd_exporter.dart';
import 'package:flutter/material.dart';

class USSDCodeWidget{
  USSDCode function;
  StatelessWidget widget;

  @override
  String toString() {
    return function.key;
  }

  USSDCodeWidget({
    required this.function,
    required this.widget,
  });
}