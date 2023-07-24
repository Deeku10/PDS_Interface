import 'package:flutter/material.dart';
import 'package:pds_user_app/screens/home.dart';
import 'package:pds_user_app/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: LoginPage.id,
      routes: {
        HomePage.id: ((context) => const HomePage(
              name: 'Deepak',
            )),
        LoginPage.id: ((cpntext) => const LoginPage())
      },
    );
  }
}
