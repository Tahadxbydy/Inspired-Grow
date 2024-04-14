import 'package:baladisap/screens/cartScreen2.dart';
import 'package:baladisap/widgets/DropDownButton.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class PaymentDetailScreen extends StatelessWidget {
  const PaymentDetailScreen({super.key});
  static const routename = 'PaymentDetailScreen';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final sizeH = SizeConfig.blockSizeH!;
    final sizeV = SizeConfig.blockSizeV!;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: Text('Payment Details'),
      ),
      body: Padding(
        padding: EdgeInsets.all(sizeH * 2),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.all(sizeH * 2),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: Colors.black12)),
                  height: sizeV * 7,
                  width: double.infinity,
                  child: MyDropdown()),
              SizedBox(
                height: sizeV * 1,
              ),
              TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  labelText: 'Input card holder name',
                  border: const OutlineInputBorder(),
                  fillColor: Colors.white,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: kPrimaryColor),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: Colors.black12),
                  ),
                ),
              ),
              SizedBox(
                height: sizeV * 1,
              ),
              TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  labelText: 'Branch Code',
                  border: const OutlineInputBorder(),
                  fillColor: Colors.white,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: kPrimaryColor),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: Colors.black12),
                  ),
                ),
              ),
              SizedBox(
                height: sizeV * 1,
              ),
              TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  labelText: 'Input card number',
                  border: const OutlineInputBorder(),
                  fillColor: Colors.white,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: kPrimaryColor),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: Colors.black12),
                  ),
                ),
              ),
              SizedBox(
                height: sizeV * 1,
              ),
              TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  labelText: 'Card Issue Date',
                  border: const OutlineInputBorder(),
                  fillColor: Colors.white,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: kPrimaryColor),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: Colors.black12),
                  ),
                ),
              ),
              SizedBox(
                height: sizeV * 1,
              ),
              TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  labelText: 'Expiry Date',
                  border: const OutlineInputBorder(),
                  fillColor: Colors.white,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: kPrimaryColor),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: Colors.black12),
                  ),
                ),
              ),
              SizedBox(
                height: sizeV * 1,
              ),
              TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  labelText: 'CVV',
                  border: const OutlineInputBorder(),
                  fillColor: Colors.white,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: kPrimaryColor),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: Colors.black12),
                  ),
                ),
              ),
              SizedBox(
                height: sizeV * 8,
              ),
              SizedBox(
                height: sizeV * 5,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, CartScreen2.routename);
                  },
                  child: const Text('SUBMIT'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
