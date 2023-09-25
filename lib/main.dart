

import 'dart:js';

import 'package:demopractice/appbar.dart';
import 'package:demopractice/listview.dart';
import 'package:demopractice/login.dart';
import 'package:demopractice/sign%20up.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login':(context)=>MyLogin(),
      'sign':(context)=>signup(),
      'app':(context)=>appbar(),
      'list':(context)=>listview(),
    },
  ));

}