import 'package:flutter/material.dart';

import '../../size_config.dart';

class OngoingtTab extends StatelessWidget {
  const OngoingtTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final sizeH = SizeConfig.blockSizeH!;
    // final sizeV = SizeConfig.blockSizeV!;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/order image.png'),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: sizeH * 6),
          child: Text(
            'There is n ongoing order right now. You can order from home',
            textAlign: TextAlign.center,
            textScaleFactor: 1.5,
          ),
        ),
      ],
    );
  }
}
