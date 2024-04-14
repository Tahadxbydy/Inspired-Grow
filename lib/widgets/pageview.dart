import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyPageView extends StatelessWidget {
  // MyPageView({super.key});
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Expanded(
          child: PageView.builder(
            controller: _controller,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Image.asset(
                'assets/homescreen/mountain-landscape-g2c147a315_1280.jpg',
                fit: BoxFit.cover,
              );
            },
          ),
        ),
        SmoothPageIndicator(
          effect: const ExpandingDotsEffect(
            activeDotColor: Colors.grey,
            dotWidth: 10,
            dotHeight: 9,
            spacing: 1,
            expansionFactor: 2,
          ),
          controller: _controller,
          count: 5,
        )
      ],
    );
  }
}
