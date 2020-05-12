import 'package:flutter/material.dart';
import 'package:theshoppingapp/pages/CheckList.dart';
import 'package:theshoppingapp/pages/choose_items.dart';
import 'package:theshoppingapp/pages/home.dart';
import 'package:theshoppingapp/pages/loading.dart';
import 'package:theshoppingapp/pages/share.dart';


void main() => runApp(MaterialApp(
  initialRoute: '/home',
  routes: {
    '/':(context)=>Loading(),
    '/home':(context)=>Home(),
    '/Item':(context)=>ChooseItems(),
    '/share':(context)=>Share(),
    '/screenshot':(context)=>Checklist(),
  },

));