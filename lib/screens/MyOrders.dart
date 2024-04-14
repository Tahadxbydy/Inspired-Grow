import 'package:baladisap/constants.dart';
import 'package:flutter/material.dart';
import '../widgets/tabs/tab1.dart';
import '../widgets/tabs/tab2.dart';

class MyOrdersScreen extends StatelessWidget {
  static const routename = 'MyOrdersScreen';
  @override
  Widget build(BuildContext context) {
    // final sizeH = SizeConfig.blockSizeH!;
    // final sizeV = SizeConfig.blockSizeV!;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
          title: Text('Orders'),
          bottom: TabBar(
            unselectedLabelColor: Colors.grey,
            labelColor: kSecondaryColor,
            indicatorWeight: 2,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(text: 'Ongoing'),
              Tab(text: 'HIstory'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            OngoingtTab(),
            HistoryTab(),
          ],
        ),
      ),
    );
  }
}
