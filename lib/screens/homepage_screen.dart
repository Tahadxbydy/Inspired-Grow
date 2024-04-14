import 'package:baladisap/constants.dart';
import 'package:baladisap/model/items_model.dart';
import 'package:baladisap/screens/categoryscreen.dart';
import 'package:baladisap/screens/accountScreen.dart';
import 'package:baladisap/screens/notificationScreen.dart';
import 'package:baladisap/screens/productdetailsscreen.dart';
import 'package:baladisap/screens/productscreen.dart';
import 'package:baladisap/screens/vanScreen.dart';
import 'package:baladisap/screens/wishlist.dart';
import 'package:baladisap/size_config.dart';
import 'package:baladisap/widgets/itemscardwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Home extends StatefulWidget {
  static const routename = 'Home';
  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void navigationTapped(int index) {
    //Animating Page
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _children = [
    HomeScreen(),
    CategoryScreen(),
    VanScreen(),
    AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: _selectedIndex == 0
                  ? const CircleAvatar(
                      backgroundColor: kSecondaryColor,
                      child: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                    )
                  : const Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 1
                  ? const CircleAvatar(
                      backgroundColor: kSecondaryColor,
                      child: Icon(
                        Icons.dashboard_outlined,
                        color: Colors.white,
                      ),
                    )
                  : const Icon(Icons.dashboard_outlined),
              label: 'dashboard',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 2
                  ? CircleAvatar(
                      backgroundColor: kSecondaryColor,
                      child: SvgPicture.asset(
                        'assets/logo/van.svg',
                        color: Colors.white,
                      ))
                  : SvgPicture.asset(
                      'assets/logo/van.svg',
                      color: Colors.grey,
                    ),
              label: 'delivery',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 3
                  ? const CircleAvatar(
                      backgroundColor: kSecondaryColor,
                      child: Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    )
                  : const Icon(Icons.menu),
              label: 'drawr',
            ),
          ],
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _selectedIndex,
          // selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          onTap: (index) {
            navigationTapped(index);
          },
        ),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  // const HomeScreen({super.key});
  static const routename = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

PageController pageController = PageController();

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> widgets_list = [
    HomeScreen(),
    VanScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final sizeH = SizeConfig.blockSizeH!;
    final sizeV = SizeConfig.blockSizeV!;
    return Center(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: Image.asset('assets/homescreen/logo_image.png'),
          title: Column(
            children: [
              const FittedBox(child: Text('Inspired Grow')),
              Container(
                width: sizeH * 33,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(sizeH * 9),
                  color: kContainerColor,
                ),
                padding: EdgeInsets.all(sizeH * 1),
                child: Center(
                  child: Text(
                    "Grocery on wheel’s",
                    style:
                        TextStyle(fontSize: sizeH * 3, color: Colors.white70),
                  ),
                ),
              )
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, NotificationScreen.routename);
                },
                icon: const Icon(Icons.notifications_none_outlined)),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, WishListScreen.routename);
                },
                icon: const Icon(Icons.shopping_cart_outlined)),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, AccountScreen.routename);
              },
              child: CircleAvatar(
                child: Image.asset('assets/homescreen/user_avatar.png'),
              ),
            ),
            SizedBox(
              width: sizeV * 2,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: kPrimaryColor,
                width: double.infinity,
                height: sizeH * 15,
                padding: const EdgeInsets.all(6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: sizeV * 5,
                      width: sizeH * 80,
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          suffixIcon: const Icon(Icons.mic_none),
                          prefixIcon: const Icon(Icons.search),
                          labelText: 'Type a message',
                          border: const OutlineInputBorder(),
                          fillColor: Colors.white,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50.0),
                            borderSide: const BorderSide(color: kPrimaryColor),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50.0),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                              context, CategoryScreen.routename);
                        },
                        child: Image.asset(
                            'assets/homescreen/Categories Icon Button.png')),
                  ],
                ),
              ),
              SizedBox(
                height: sizeV * 2,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, VanScreen.routename);
                },
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
              SizedBox(height: sizeV * 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      padding: EdgeInsets.all(sizeV * 1),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(width: 2, color: kSecondaryColor)),
                      child: Row(
                        children: [
                          Icon(
                            Icons.gps_fixed,
                          ),
                          Text(
                            '123, Sector 18A, Chandi road',
                            style: TextStyle(color: kSecondaryColor),
                          ),
                        ],
                      )),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: sizeV * 4,
                      // width: sizeH * 30,
                      padding: EdgeInsets.all(sizeH * 2),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: kSecondaryColor),
                      child: const Text(
                        'Book Van',
                        style: TextStyle(color: kTextWhiteColor),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: sizeV * 2,
              ),
              SizedBox(
                child: Image.asset('assets/homescreen/Group 1000001573.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular near you',
                      style: TextStyle(
                          color: kTextBlackColor,
                          fontWeight: FontWeight.bold,
                          fontSize: sizeH * 4),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, ProductScreen.routename);
                      },
                      child: Text(
                        'View All',
                        style: TextStyle(
                            color: kSecondaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: sizeH * 4),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: sizeV * 30,
                width: double.infinity,
                child: ListView.builder(
                    itemCount: itemlist.length,
                    // shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                              context, ProductDetailScreen.routename);
                        },
                        child: ItemsCard(
                          imagepath: itemlist[index].imagepath,
                          title: itemlist[index].title,
                          discountprice: itemlist[index].discountprice,
                          price: itemlist[index].price,
                        ),
                      );
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recommended for you',
                      style: TextStyle(
                          color: kTextBlackColor,
                          fontWeight: FontWeight.bold,
                          fontSize: sizeH * 4),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, ProductScreen.routename);
                      },
                      child: Text(
                        'View All',
                        style: TextStyle(
                            color: kSecondaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: sizeH * 4),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: sizeV * 30,
                width: double.infinity,
                child: ListView.builder(
                    itemCount: itemlist.length,
                    // shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(ProductDetailScreen.routename);
                        },
                        child: ItemsCard(
                          imagepath: itemlist[index].imagepath,
                          title: itemlist[index].title,
                          discountprice: itemlist[index].discountprice,
                          price: itemlist[index].price,
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
