import 'package:baladisap/constants.dart';
import 'package:baladisap/screens/DeliveryScreen/DeliveryTrackingScreen.dart';
import 'package:baladisap/screens/MyOrders.dart';
import 'package:baladisap/screens/editProfileScreen.dart';
import 'package:baladisap/screens/myAddressScreen.dart';
import 'package:baladisap/screens/notificationScreen.dart';
import 'package:baladisap/screens/paymentmethodscreen.dart';
import 'package:baladisap/screens/vanScreen.dart';
import 'package:baladisap/screens/wishlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../size_config.dart';

class AccountScreen extends StatelessWidget {
  // const AccountScreen({super.key});
  static const routename = 'MenuScreen';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final sizeH = SizeConfig.blockSizeH!;
    final sizeV = SizeConfig.blockSizeV!;
    return Scaffold(
        backgroundColor: Color(0xffF0F0F1),
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: Text('Profile'),
          backgroundColor: kTextWhiteColor,
          foregroundColor: kTextBlackColor,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: kTextWhiteColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40)),
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: Image.asset('assets/homescreen/user_avatar.png'),
                      title: Text(
                        'Name Surname',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'Add your contact data',
                        style: TextStyle(color: Colors.grey),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(
                            context, EditProfileScreen.routename);
                      },
                      child: Container(
                        margin: EdgeInsets.all(sizeV * 3),
                        width: double.infinity,
                        padding: EdgeInsets.all(sizeH * 3),
                        decoration: BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Center(
                            child: Text(
                          'Edit Profile',
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(sizeV * 3),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: kTextWhiteColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: sizeH * 5, top: sizeV * 2),
                      child: Text(
                        'Settings',
                        textScaleFactor: 1.5,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    buildlisttile(
                        'My Address',
                        Icon(Icons.location_on_outlined),
                        MyAddressScreen.routename,
                        context),
                    buildlisttile(
                        'Pre van Booking',
                        SvgPicture.asset(
                          'assets/logo/van.svg',
                          color: Colors.grey,
                        ),
                        VanScreen.routename,
                        context),
                    buildlisttile('My Wishlist', Icon(Icons.bolt_outlined),
                        WishListScreen.routename, context),
                    buildlisttile(
                        'My Orders',
                        Icon(Icons.shopping_basket_outlined),
                        MyOrdersScreen.routename,
                        context),
                    buildlisttile(
                        'Delivery Tracking',
                        SvgPicture.asset(
                          'assets/logo/solar_delivery-outline.svg',
                          width: sizeH * 6,
                          color: Colors.grey,
                        ),
                        DeliveryTrackingScreen.routename,
                        context),
                    buildlisttile(
                        'Notifications',
                        Icon(Icons.notifications_active_outlined),
                        NotificationScreen.routename,
                        context),
                    buildlisttile(
                        'Payment Method',
                        Icon(Icons.account_balance_wallet_outlined),
                        PaymentMethodScreen.routename,
                        context),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(sizeV * 3),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: kTextWhiteColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: sizeH * 5, top: sizeV * 2),
                      child: Text(
                        'Settings',
                        textScaleFactor: 1.5,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    buildlisttile('Invites', Icon(Icons.person_add_alt),
                        MyAddressScreen.routename, context),
                    GestureDetector(
                      onTap: () {},
                      child: buildlisttile('Get Help',
                          Icon(Icons.headset_mic_outlined), null, null),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: sizeV * 10,
              ),
            ],
          ),
        ));
  }

  Widget buildlisttile(
      String _title, Widget _leadicon, String? routename, BuildContext? ctx) {
    print('object2');
    return Material(
      color: Colors.white,
      child: ListTile(
        onTap: () {
          ctx != null && routename != null
              ? Navigator.pushNamed(ctx, routename)
              : null;
        },
        leading: _leadicon,
        title: Text(
          _title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        trailing: Icon(Icons.arrow_forward_ios_rounded),
      ),
    );
  }
}
