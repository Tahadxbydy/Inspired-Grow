import 'package:baladisap/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NotificationScreen extends StatelessWidget {
  // const NotificationScreen({super.key});
  static const routename = 'NotificationScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        title: Text('Notifications'),
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
              leading: SvgPicture.asset('assets/logo/1.svg'),
              title: Text('Your Order is Confirmed. Please check!'),
              subtitle: Text('July 12, 2023 at 12:58 PM'),
              trailing: Text(
                '.',
                style: TextStyle(fontSize: 50, color: kSecondaryColor),
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
              leading: SvgPicture.asset('assets/logo/2.svg'),
              title: Text('Your Order is Delivering to your home'),
              trailing: Text(
                '.',
                style: TextStyle(fontSize: 50, color: kSecondaryColor),
              ),
              subtitle: Text('July 10, 2023 at 12:58 PM'),
              onTap: () {},
            ),
          ),
          Dismissible(
            key: Key(3.toString()),
            // onDismissed: (direction) => onDismissed(),
            background: Container(
              color: Colors.red,
              child: Icon(Icons.delete, color: Colors.white),
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: 20),
            ),
            child: ListTile(
              leading: SvgPicture.asset('assets/logo/3.svg'),
              title:
                  Text('Your Order is Completed. Please  rate the experince'),
              subtitle: Text('July 10, 2023 at 12:58 PM'),
              trailing: Text(
                '.',
                style: TextStyle(fontSize: 50, color: kSecondaryColor),
              ),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
