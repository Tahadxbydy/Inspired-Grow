// ignore_for_file: file_names, prefer_const_constructors, unused_import, camel_case_types
import 'package:baladisap/screens/homepage_screen.dart';
import 'package:flutter/material.dart';
import 'login2.dart';

class loginsuccess extends StatefulWidget {
  @override
  State<loginsuccess> createState() => _loginsuccessState();
}

class _loginsuccessState extends State<loginsuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.language,
              color: Color(0xff636363),
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 10,
          ),
          Center(
            child: Image(
              image: AssetImage("assets/congo2.png"),
              width: MediaQuery.of(context).size.width / 1.5,
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 15),
            child: Text(
              "Congratulation",
              softWrap: true,
              textAlign: TextAlign.start,
              style: TextStyle(
                decoration: TextDecoration.none,
                color: Color(0xff434C62),
                backgroundColor: Color(0xffffffff),
                fontWeight: FontWeight.w400,
                fontSize: 32,
                fontFamily: 'SF Pro Display',
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 50),
            child: Text(
              "Welcome to grocery on wheels!",
              softWrap: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                decoration: TextDecoration.none,
                color: Color(0xff434C62),
                backgroundColor: Color(0xffffffff),
                fontWeight: FontWeight.w400,
                fontSize: 12,
                fontFamily: 'SF Pro Display',
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 10,
          ),
          //button
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 21,
                right: MediaQuery.of(context).size.width / 21),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // <-- Radius
                ),
                backgroundColor: Color(0xff731F34), // NEW
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, Home.routename);
              },
              child: const Text(
                "Goto Home Page",
                softWrap: true,
                textAlign: TextAlign.center,
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Color(0xffffffff),
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  fontFamily: 'SF Pro Display',
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
