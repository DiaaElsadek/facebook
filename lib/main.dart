import 'homePage.dart';
import 'package:flutter/material.dart';
import 'login.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App",
      debugShowCheckedModeBanner: false,
      routes: {
        Login.routeName : (context)=> Login(),
        HomePage.routeName : (context)=> HomePage(),
      },
      initialRoute: Login.routeName,
      // home: Scaffold(
      //   appBar: AppBar(),
      // ),
    );
  }
}


