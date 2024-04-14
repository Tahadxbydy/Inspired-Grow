import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';
import '../size_config.dart';

class VanScreen extends StatefulWidget {
  // const VanScreen({super.key});
  static const routename = 'VanScreen';

  @override
  State<VanScreen> createState() => _VanScreenState();
}

class _VanScreenState extends State<VanScreen> {
  bool nextday = true;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final sizeH = SizeConfig.blockSizeH!;
    final sizeV = SizeConfig.blockSizeV!;
    if (nextday) {
      return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('Van Booking'),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(sizeH * 2),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: sizeV * 3,
                  ),
                  SvgPicture.asset(
                    'assets/logo/van.svg',
                    color: kSecondaryColor,
                  ),
                  SizedBox(
                    width: sizeV * 3,
                  ),
                  const FittedBox(
                    child: Text(
                      'Van available in 15 minutes',
                      style: TextStyle(
                        color: kSecondaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: sizeV * 3,
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: sizeH * 3),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(width: 2, color: kSecondaryColor)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: sizeH * 1),
                        child: Icon(
                          Icons.gps_fixed,
                        ),
                      ),
                      Text(
                        '123, Sector 18A, Chandi road',
                        style: TextStyle(color: kSecondaryColor),
                      ),
                      SizedBox(),
                      SizedBox(),
                      SizedBox(),
                      // SizedBox(height: 10, child: SizedBox.expand()),
                      Align(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_drop_down)),
                      ),
                    ],
                  )),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: sizeV * 1.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Material(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.circular(50),
                    child: Ink(
                      child: InkWell(
                        child: Container(
                          height: sizeV * 5,
                          width: sizeH * 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              border:
                                  Border.all(width: 2, color: kSecondaryColor)),
                          child: Center(
                            child: Text(
                              'Now',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        nextday = !nextday;
                      });
                    },
                    child: Container(
                      height: sizeV * 5,
                      width: sizeH * 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(width: 2, color: kSecondaryColor)),
                      child: Center(
                        child: Text(
                          'Next Day',
                          style: TextStyle(color: kSecondaryColor),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              alignment: Alignment.bottomCenter,
              fit: StackFit.loose,
              children: [
                Image.asset(
                  'assets/map.png',
                  fit: BoxFit.cover,
                ),
                InkWell(
                  onTap: () {
                    bottomSheet(context, sizeV, sizeH);
                  },
                  child: Container(
                    margin: EdgeInsets.all(sizeV * 1),
                    height: sizeV * 5,
                    width: sizeH * 70,
                    decoration: BoxDecoration(
                      color: kSecondaryColor,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Center(
                      child: Text(
                        'Confirm Booking',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('Van Booking'),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(sizeH * 2),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: sizeH * 3,
                  ),
                  SvgPicture.asset(
                    'assets/logo/van.svg',
                    color: kSecondaryColor,
                  ),
                  SizedBox(
                    width: sizeV * 3,
                  ),
                  const FittedBox(
                    child: Text(
                      'Van reaching on Next Day',
                      style: TextStyle(
                        color: kSecondaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: sizeV * 3,
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: sizeH * 3),
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: sizeH * 1, vertical: sizeV * 1),
                        child: CircleAvatar(
                          backgroundColor: kSecondaryColor,
                          foregroundColor: Colors.white,
                          child: Icon(
                            Icons.location_on_outlined,
                          ),
                        ),
                      ),
                      Text(
                        '32 Lianberis Close, Tonteg, CF38 1HR',
                        style: TextStyle(color: kSecondaryColor),
                      ),
                    ],
                  )),
            ),
            Expanded(
              child: Stack(
                alignment: Alignment.topCenter,
                // fit: StackFit.expand,
                // clipBehavior: Clip.hardEdge,
                children: [
                  Image.asset(
                    'assets/map 2.png',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: InkWell(
                      onTap: () {
                        bottomSheet(context, sizeV, sizeH);
                      },
                      child: Container(
                        margin: EdgeInsets.all(sizeV * 5),
                        height: sizeV * 5,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Center(
                          child: Text(
                            'Confirm Booking',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        floatingActionButton: Align(
          alignment: Alignment(-sizeH * 0.2, -sizeV * 0.04),
          child: FloatingActionButton(
            onPressed: () {
              setState(() {
                nextday = !nextday;
              });
            },
            child: Icon(Icons.arrow_back_rounded),
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
          ),
        ),
      );
    }
  }

  Future<dynamic> bottomSheet(
      BuildContext context, double sizeV, double sizeH) {
    return showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: sizeV * 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40)),
              color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: sizeV * 5, left: sizeH * 5),
                child: Text(
                  'Van Booking...',
                  textScaleFactor: 1.5,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: sizeV * 3),
                  child: SvgPicture.asset('assets/logo/modelbottom image.svg'),
                ),
              ),
              Center(
                child: Text(
                  'Wait for confirmation',
                  textScaleFactor: 1.5,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: Padding(
                    padding: EdgeInsets.all(sizeV * 3),
                    child: SizedBox(
                      width: double.infinity,
                      height: sizeV * 6,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'cancle',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                      ),
                    )),
              ),
              Center(
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'minimum order ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black)),
                    TextSpan(
                        text: '৳1400', style: TextStyle(color: Colors.black)),
                  ]),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
