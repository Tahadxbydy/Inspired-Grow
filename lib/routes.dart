import 'package:baladisap/example/RegisterScreen.dart';
import 'package:baladisap/screens/CartScreen.dart';
import 'package:baladisap/screens/DeliveryScreen/DeliveryTrackingScreen.dart';
import 'package:baladisap/screens/DeliveryScreen/DeliveryTrackingScreen2.dart';
import 'package:baladisap/screens/MyOrders.dart';
import 'package:baladisap/screens/PaymentDetails.dart';
import 'package:baladisap/screens/cartScreen2.dart';
import 'package:baladisap/screens/categoryscreen.dart';
import 'package:baladisap/screens/editProfileScreen.dart';
import 'package:baladisap/screens/homepage_screen.dart';
import 'package:baladisap/screens/myAddressScreen.dart';
import 'package:baladisap/screens/notificationScreen.dart';
import 'package:baladisap/screens/paymentmethodscreen.dart';
import 'package:baladisap/screens/productdetailsscreen.dart';
import 'package:baladisap/screens/productscreen.dart';
import 'package:baladisap/screens/vanScreen.dart';
import 'package:baladisap/screens/wishlist.dart';
import 'package:flutter/material.dart';

import 'screens/accountScreen.dart';

Map<String, WidgetBuilder> routes = {
  //all screens will be registered here like manifest in android
  Home.routename: (context) => Home(),
  HomeScreen.routename: (context) => HomeScreen(),
  ProductScreen.routename: (context) => ProductScreen(),
  ProductDetailScreen.routename: (context) => ProductDetailScreen(),
  WishListScreen.routename: (context) => WishListScreen(),
  MyCartScreen.routename: (context) => MyCartScreen(),
  CartScreen2.routename: (context) => CartScreen2(),
  NotificationScreen.routename: (context) => NotificationScreen(),
  VanScreen.routename: (context) => VanScreen(),
  AccountScreen.routename: (context) => AccountScreen(),
  CategoryScreen.routename: (context) => CategoryScreen(),
  CatagoryProduct.routename: (context) => CatagoryProduct(),
  EditProfileScreen.routename: (context) => EditProfileScreen(),
  MyOrdersScreen.routename: (context) => MyOrdersScreen(),
  MyAddressScreen.routename: (context) => MyAddressScreen(),
  PaymentMethodScreen.routename: (context) => PaymentMethodScreen(),
  PaymentDetailScreen.routename: (context) => PaymentDetailScreen(),
  DeliveryTrackingScreen.routename: (context) => DeliveryTrackingScreen(),
  DeliveryTrackingScreen2.routename: (context) => DeliveryTrackingScreen2(),
  RegisterSceen.routename: (context) => RegisterSceen(),
  // PreVanBookingScreen.routename: (context) => PreVanBookingScreen(),
};
