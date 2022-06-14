import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salaty/view/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,

    home: SafeArea(

      child: HomeView(),
    ),
  ));
}
