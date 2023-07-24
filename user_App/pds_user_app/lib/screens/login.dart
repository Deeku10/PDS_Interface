import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pds_user_app/screens/home.dart';

class LoginPage extends StatefulWidget {
  static const id = '/login';
  const LoginPage({Key? key}) : super(key: key);
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "Deepak";

  @override
  Widget build(BuildContext context) {
    // String name = "Deepak";

    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Enter your credinals to login",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              obscureText: false,
              onSubmitted: (value) {
                name = value;

                setState(() {});
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'user name',
                hintText: 'Enter User Name',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
                hintText: 'Enter Password',
              ),
            ),
            SizedBox(
              height: 50,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomePage(
                              name: name,
                            )),
                  );
                },
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.yellowAccent,
                        borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.symmetric(vertical: 25, horizontal: 40),
                    child: Text("Sign In")))
          ],
        ),
      ),
    );
  }
}
