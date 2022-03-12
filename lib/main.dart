// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:dummy_16/views/pages/home_page.dart';
import 'package:dummy_16/views/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:localstorage/localstorage.dart';

Future<void> main() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white, systemNavigationBarColor: Colors.white));

  WidgetsFlutterBinding.ensureInitialized();
  final LocalStorage login = new LocalStorage('loginData');
  await login.ready;

  var isLoggedIn = (login.getItem('login') == null) ? false : true;
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: isLoggedIn ? HomePage() : LoginScreen(),
  ));
}