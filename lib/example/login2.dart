// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, avoid_print, annotate_overrides, unnecessary_const, camel_case_types, unnecessary_import, unnecessary_new, prefer_interpolation_to_compose_strings

import 'dart:async';
import 'package:baladisap/constants.dart';
import 'package:baladisap/example/RegisterScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:pinput/pinput.dart';

import 'Successfull Registration.dart';

class login2 extends StatefulWidget {
  @override
  State<login2> createState() => _login2State();
}

class _login2State extends State<login2> {
  late Timer _timer;
  int _start = 60;
  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  bool ishiddenPassword = true;
  GlobalKey<FormState> fkey = GlobalKey<FormState>();
  TextEditingController tec = TextEditingController();
  TextEditingController tectec = TextEditingController();
  bool status = false;
  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
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
          scrollDirection: Axis.vertical,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 15,
            ),
            //login haeading
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width / 21,
                  right: MediaQuery.of(context).size.width / 21),
              child: Text(
                "Login",
                softWrap: true,
                textAlign: TextAlign.start,
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Color(0xff1C1C1C),
                  backgroundColor: Color(0xffffffff),
                  fontWeight: FontWeight.w700,
                  fontSize: MediaQuery.of(context).size.width / 11,
                  fontFamily: 'SF Pro Display',
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 100,
            ),
            //paragraph
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width / 21,
                  right: MediaQuery.of(context).size.width / 21),
              child: Text(
                "Please login to continue using this application",
                softWrap: true,
                textAlign: TextAlign.start,
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Color(0xff606060),
                  backgroundColor: Color(0xffffffff),
                  fontWeight: FontWeight.w400,
                  fontSize: MediaQuery.of(context).size.width / 27,
                  fontFamily: 'SF Pro Display',
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 20,
            ),
            //phone field
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width / 21,
                  right: MediaQuery.of(context).size.width / 21),
              child: IntlPhoneField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(20.0),
                  hintText: 'Cell Phone',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
                onCountryChanged: (country) {
                  print('Country changed to: ' + country.name);
                },
              ),
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height / 50,
            ),

            //continue_button
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
                  showDialog(
                    context: context,
                    builder: (ctx) => SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: AlertDialog(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(24.0))),
                        actions: <Widget>[
                          SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Column(
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height / 80,
                                ),
                                //otpimg2
                                Center(
                                  child: Image(
                                    image: AssetImage("assets/otp.png"),
                                    width:
                                        MediaQuery.of(context).size.width / 2.8,
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height / 65,
                                ),
                                //text choose option to get otp
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: Text(
                                    "We’ve send you the verification\ncode on +12620 0323 7631",
                                    softWrap: true,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      decoration: TextDecoration.none,
                                      color: Color(0xff606060),
                                      backgroundColor: Color(0xffffffff),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      fontFamily: 'SF Pro Display',
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height / 65,
                                ),
                                //otpfield
                                Pinput(
                                  defaultPinTheme: PinTheme(
                                      width:
                                          MediaQuery.of(context).size.width / 7,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              13,
                                      textStyle:
                                          TextStyle(color: Color(0xff434C62)),
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        border: Border.all(
                                            color: Color(0xffD1D3D9),
                                            width: 2.0),
                                        borderRadius: BorderRadius.circular(10),
                                      )),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height / 65,
                                ),
                                //don't receive text

                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text(
                                      "Don't received code?",
                                      softWrap: true,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        decoration: TextDecoration.none,
                                        color: Color(0xff434C62),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        fontFamily: 'SF Pro Display',
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        startTimer();
                                      },
                                      child: Text(
                                        "Request again",
                                        softWrap: true,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          decoration: TextDecoration.none,
                                          color: Color(0xffF6B704),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          fontFamily: 'SF Pro Display',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height / 65,
                                ),
                                //otpbutton
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width /
                                          21,
                                      right: MediaQuery.of(context).size.width /
                                          21),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: const Size(400, 60),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            10), // <-- Radius
                                      ),
                                      backgroundColor: Color(0xff731F34), // NEW
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: ((context) =>
                                                  loginsuccess())));
                                    },
                                    child: const Text(
                                      "Continue",
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
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height / 65,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Resend code ",
                                      softWrap: true,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        decoration: TextDecoration.none,
                                        color: Color(0xff434C62),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        fontFamily: 'SF Pro Display',
                                      ),
                                    ),
                                    Text(
                                      "$_start",
                                      style: TextStyle(
                                        color: Color(0xffF6B704),
                                        fontSize: 12,
                                        fontFamily: 'SF Pro Display',
                                      ),
                                    ),
                                  ],
                                ),

                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height / 65,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                child: Text(
                  "Continue",
                  softWrap: true,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.w400,
                    fontSize: MediaQuery.of(context).size.width / 20,
                    fontFamily: 'SF Pro Display',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            ),
            //or with line
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 21,
                right: MediaQuery.of(context).size.width / 21,
              ),
              child: Image(
                image: AssetImage("assets/Divider.png"),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            ),
            //signup with gmail
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 21,
                right: MediaQuery.of(context).size.width / 21,
              ),
              child: Container(
                height: MediaQuery.of(context).size.height / 12,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xff767C8D),
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(
                          MediaQuery.of(context).size.width / 25),
                      child: Image(
                        image: AssetImage("assets/google.png"),
                        width: MediaQuery.of(context).size.width / 10,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 12,
                    ),
                    Text(
                      "Continue with Gmail",
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Color(0xff1C1C1C),
                        backgroundColor: Color(0xffffffff),
                        fontWeight: FontWeight.w400,
                        fontSize: MediaQuery.of(context).size.width / 20,
                        fontFamily: 'SF Pro Display',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            ),
            //signup with facebook
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 21,
                right: MediaQuery.of(context).size.width / 21,
              ),
              child: Container(
                height: MediaQuery.of(context).size.height / 12,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xff767C8D),
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(
                          MediaQuery.of(context).size.width / 20),
                      child: Image(
                        image: AssetImage("assets/Facebook .png"),
                        width: MediaQuery.of(context).size.width / 12,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 22,
                    ),
                    Text(
                      "Continue with Facebook",
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Color(0xff1C1C1C),
                        backgroundColor: Color(0xffffffff),
                        fontWeight: FontWeight.w400,
                        fontSize: MediaQuery.of(context).size.width / 20,
                        fontFamily: 'SF Pro Display',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, RegisterSceen.routename);
                },
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'New to this appkication? Register',
                    style: TextStyle(color: kSecondaryColor),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 40,
            ),
          ]),
        ));
  }
}
