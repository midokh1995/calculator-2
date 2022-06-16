import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salaty/view/home.dart';
// اسم المشوع بحاول اغيره ولكن بديني خطأ وحليا المشروع شغال على وضعه الحالي

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,

    home: SafeArea(

      child: HomeView(),
    ),
  ));
}
