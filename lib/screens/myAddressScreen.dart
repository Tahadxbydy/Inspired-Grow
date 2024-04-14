import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';
import '../size_config.dart';

class MyAddressScreen extends StatelessWidget {
  const MyAddressScreen({super.key});
  static const routename = 'MyAddressScreen';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final sizeH = SizeConfig.blockSizeH!;
    final sizeV = SizeConfig.blockSizeV!;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: Text('MyAddress'),
      ),
      body: Column(
        children: [
          Dismissible(
            key: Key(1.toString()),
            // onDismissed: (direction) => onDismissed(),
            background: Container(
              color: Colors.red,
              child: Icon(Icons.delete, color: Colors.white),
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: 20),
            ),
            child: ListTile(
              // leading: SvgPicture.asset('assets/logo/1.svg'),
              title: Text('Home'),
              subtitle: Text('51/5A, Road: 7, Pallabi, Dhaka'),
              trailing: CircleAvatar(
                backgroundColor: Color(0XFFF37A20),
                child: SvgPicture.asset('assets/logo/pencilsvg.svg'),
              ),
              onTap: () {},
            ),
          ),
          Dismissible(
            key: Key(2.toString()),
            // onDismissed: (direction) => onDismissed(),
            background: Container(
              color: Colors.red,
              child: Icon(Icons.delete, color: Colors.white),
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: 20),
            ),
            child: ListTile(
              // leading: SvgPicture.asset('assets/logo/1.svg'),
              title: Text('Work'),
              subtitle: Text('Dingi Technologies Ltd, Wakil T'),
              trailing: CircleAvatar(
                backgroundColor: Color(0XFFF37A20),
                child: SvgPicture.asset('assets/logo/pencilsvg.svg'),
              ),
              onTap: () {},
            ),
          ),
          Expanded(
            child: SizedBox(),
          ),
          InkWell(
            onTap: () {
              // Navigator.pushNamed(context, MyAddressScreen.routename);
            },
            child: Container(
              margin: EdgeInsets.all(sizeV * 3),
              width: double.infinity,
              padding: EdgeInsets.all(sizeH * 3),
              decoration: BoxDecoration(
                color: kSecondaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(),
                  Text(
                    'Add New Address',
                    style: TextStyle(color: Colors.white),
                  ),
                  Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
