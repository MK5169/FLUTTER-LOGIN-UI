import 'package:flutter/material.dart';
import 'package:toxic_food/colors.dart';
import 'package:toxic_food/constants.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(
                  bgImage,
                  height: height * 0.37,
                  width: width,
                  fit: BoxFit.cover,
                ),
                Container(
                  height: height * 0.42,
                  width: width,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          stops: [0.5, 0.9],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.transparent, Colors.white])),
                  //color: Colors.green.withOpacity(0.3),
                ),
              ],
            ),
            Center(
              child: Text(
                appName,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
              ),
            ),
            Center(
              child: Text(
                slogan,
                style: TextStyle(
                    color: Colors.pink[300], fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 20),
              child: Container(
                child: Text(
                  "  $loginstring  ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [primaryColor.withOpacity(0.5), Colors.transparent],
                  ),
                  border: Border(
                    left: BorderSide(color: primaryColor, width: 5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: primaryColor),
                  ),
                  prefixIcon: Icon(
                    Icons.email,
                    color: primaryColor,
                  ),
                  labelText: "EMAIL ADDRESS",
                  labelStyle: TextStyle(color: primaryColor, fontSize: 16),
                ),
              ),
            ),
            // new codes
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: primaryColor),
                  ),
                  prefixIcon: Icon(
                    Icons.lock_open_outlined,
                    color: primaryColor,
                  ),
                  labelText: "PASSWORD",
                  labelStyle: TextStyle(color: primaryColor, fontSize: 16),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
              child: Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    " $forgotText ",
                    style: TextStyle(color: Colors.black87),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: SizedBox(
                  height: height * 0.08,
                  width: width - 30,
                  child: TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.pink),
                    onPressed: () {},
                    child: Text(
                      "Login",
                      style: TextStyle(
                          letterSpacing: 0.5,
                          color: Colors.white70,
                          fontWeight: FontWeight.w700,
                          fontSize: 18),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
