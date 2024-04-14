import 'package:baladisap/screens/PaymentDetails.dart';
import 'package:baladisap/screens/cartScreen2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({super.key});
  static const routename = 'PaymentMethodScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: Text('Payment Method'),
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () {},
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, PaymentDetailScreen.routename);
              },
              child: ListTile(
                  leading: Icon(Icons.credit_card),
                  title: Text('Credit / Debit Card')),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, PaymentDetailScreen.routename);
            },
            child: ListTile(
              leading: SvgPicture.asset('assets/logo/bkash_24px.svg'),
              title: Text('Bkash Online Payment'),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, CartScreen2.routename);
            },
            child: ListTile(
              leading:
                  SvgPicture.asset('assets/logo/attach_money_bdt_24px.svg'),
              title: Text('Cash on Delivery'),
            ),
          ),
        ],
      ),
    );
  }
}
