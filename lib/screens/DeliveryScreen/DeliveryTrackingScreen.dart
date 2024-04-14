import 'package:baladisap/constants.dart';
import 'package:baladisap/screens/DeliveryScreen/DeliveryTrackingScreen2.dart';
import 'package:flutter/material.dart';

import '../../size_config.dart';

// ignore: must_be_immutable
class DeliveryTrackingScreen extends StatelessWidget {
  DeliveryTrackingScreen({super.key});
  static const routename = 'DeliveryTrackingScreen';
  int messagrindex = -1;
  final List<Color> messagecolor = [
    Color(0x2037474F),
    Color(0x2036B37E),
    Color(0x20236CD9),
    Color(0x20F37A20),
    Color(0x20FF5552),
  ];

  @override
  Widget build(BuildContext context) {
    final sizeH = SizeConfig.blockSizeH!;
    final sizeV = SizeConfig.blockSizeV!;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: Text('Delivery Details'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: sizeH * 4),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Delivered on',
                  textScaleFactor: 1.5,
                ),
                Text('6:30 pm',
                    textScaleFactor: 1.5,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: kPrimaryColor))
              ],
            ),
            SizedBox(
              height: sizeV * 2,
            ),
            Row(
              children: [
                Icon(
                  Icons.calendar_today_outlined,
                  color: Colors.black,
                ),
                SizedBox(
                  width: sizeH * 2,
                ),
                Text(
                  'March 5, 2019',
                  textScaleFactor: 3,
                )
              ],
            ),
            SizedBox(
              height: sizeV * 2,
            ),
            Builddeliverymessage(
                sizeH: sizeH,
                sizeV: sizeV,
                message: 'Waiting of Confirmation',
                date: 'November 19, 2012 4:50 AM',
                done: false),
            Builddeliverymessage(
                sizeH: sizeH,
                sizeV: sizeV,
                message: 'Delivering to Home',
                date: 'April 19, 2012 3:30 PM',
                done: true),
            Builddeliverymessage(
                sizeH: sizeH,
                sizeV: sizeV,
                message: 'We are packaging your Items',
                date: 'March 11, 2016 11:08 PM',
                done: true),
            Builddeliverymessage(
                sizeH: sizeH,
                sizeV: sizeV,
                message: 'Your order is confirmed',
                date: 'November 19, 2012 4:50 AM',
                done: true),
            Builddeliverymessage(
                sizeH: sizeH,
                sizeV: sizeV,
                message: 'Your order is received',
                date: 'November 19, 2012 4:50 AM',
                done: true),
            SizedBox(
              height: sizeV * 5,
            ),
            SizedBox(
              width: double.infinity,
              height: sizeV * 6,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                      context, DeliveryTrackingScreen2.routename);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(),
                    const Text('Track Order'),
                    Icon(
                      Icons.messenger_outline,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row Builddeliverymessage(
      {required double sizeH,
      required double sizeV,
      required String message,
      required String date,
      required bool done}) {
    messagrindex++;
    return Row(
      // mainAxisSize: MainAxisSize.min,
      children: [
        checkicon(check: done),
        Container(
          width: sizeH * 70,
          margin: EdgeInsets.symmetric(vertical: sizeV * 1),
          decoration: BoxDecoration(
              color: messagecolor[messagrindex],
              borderRadius: BorderRadius.circular(10)),
          padding: EdgeInsets.all(sizeH * 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(message),
              SizedBox(
                height: sizeV * 2,
              ),
              Text(date),
            ],
          ),
        ),
      ],
    );
  }

  IconButton checkicon({required bool check}) {
    return IconButton(
        onPressed: () {},
        icon: check
            ? Icon(
                Icons.check_circle,
                color: Colors.green,
              )
            : Icon(
                Icons.circle_outlined,
                color: Colors.grey,
              ));
  }
}
