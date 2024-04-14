import 'package:baladisap/constants.dart';
import 'package:flutter/material.dart';

import '../../size_config.dart';

// ignore: must_be_immutable
class DeliveryTrackingScreen2 extends StatelessWidget {
  DeliveryTrackingScreen2({super.key});
  static const routename = 'DeliveryTrackingScreen2';
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
        title: Text('Order #345'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: sizeH * 4),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Delivery Completed',
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
                    'March 5, 2023',
                    textScaleFactor: 3,
                  )
                ],
              ),
              SizedBox(
                height: sizeV * 2,
              ),
              SizedBox(
                width: double.infinity,
                height: sizeV * 6,
                child: MaterialButton(
                  focusElevation: 0,
                  elevation: 0,
                  color: Color(0x2036B37E),
                  onPressed: () {
                    // Navigator.pushNamed(context, MyCartScreen.routename);
                  },
                  child: const Text(
                    'Show  Delivery Details',
                    style: TextStyle(color: Colors.lightGreen),
                  ),
                ),
              ),
              SizedBox(
                height: sizeV * 2,
              ),
              SizedBox(
                width: double.infinity,
                height: sizeV * 6,
                child: MaterialButton(
                  focusElevation: 0,
                  elevation: 0,
                  color: Color(0x2036B37E),
                  onPressed: () {
                    // Navigator.pushNamed(context, MyCartScreen.routename);
                  },
                  child: const Text(
                    'Show Full Package',
                    style: TextStyle(color: Colors.lightGreen),
                  ),
                ),
              ),
              SizedBox(
                height: sizeV * 2,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Delivery Man',
                  textScaleFactor: 1.3,
                ),
              ),
              ListTile(
                leading: Image.asset('assets/Ellipse 5.png'),
                title: Text(
                  'Brandon Henry',
                  textScaleFactor: 1.3,
                ),
                subtitle: Text(
                  '(207) 555-0119',
                  textScaleFactor: 1.3,
                ),
                trailing: CircleAvatar(
                  // radius: 20,
                  backgroundColor: Colors.orange[100],
                  foregroundColor: Colors.orange,
                  child: Icon(
                    Icons.call,
                  ),
                ),
              ),
              SizedBox(
                height: sizeV * 2,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Delivery Location',
                  textScaleFactor: 1.3,
                ),
              ),
              SizedBox(
                height: sizeV * 5,
              ),
              ListTile(
                leading: CircleAvatar(
                  // radius: 20,
                  backgroundColor: Colors.deepPurple[100],
                  foregroundColor: Colors.black,
                  child: Icon(
                    Icons.location_on_outlined,
                  ),
                ),
                title: Text(
                  'Floor 4, Wakil Tower, Ta 131 Gulshan Badda Link Road',
                ),
              ),
              SizedBox(
                height: sizeV * 2,
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Subtotal',
                    textScaleFactor: 1.2,
                  ),
                  Text(
                    'BDT362',
                    textScaleFactor: 1.2,
                  ),
                ],
              ),
              SizedBox(
                height: sizeV * 0.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Delivery Charge',
                    textScaleFactor: 1.2,
                  ),
                  Text(
                    'BDT50',
                    textScaleFactor: 1.2,
                  ),
                ],
              ),
              SizedBox(
                height: sizeV * 0.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    textScaleFactor: 1.2,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'BDT412',
                    textScaleFactor: 1.2,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: sizeV * 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Rating & Review',
                  textScaleFactor: 1.3,
                ),
              ),
              SizedBox(
                height: sizeV * 1,
              ),
              Row(
                children: [
                  Text(
                    '4.5',
                    textScaleFactor: 2,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Text(
                'Consectetur non occaecat eu ut enim ipsum reprehenderit eu. Enim eiusmod consequat cillum velit. Proident esse irure est anim irure mollit velit.',
                textScaleFactor: 1.2,
              ),
              SizedBox(
                height: sizeV * 2,
              ),
              SizedBox(
                width: double.infinity,
                height: sizeV * 6,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.pushNamed(context, MyCartScreen.routename);
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
              SizedBox(
                height: sizeV * 6,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
