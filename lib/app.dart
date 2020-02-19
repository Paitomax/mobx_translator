import 'package:flutter/material.dart';
import 'package:mobx_translator/lib/home/home_page.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MobX Translator',
      theme: ThemeData(primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

