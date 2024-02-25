import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:krishighar/screens/Home_screen/Home_SCREEN/home_tab_controller.dart';
import 'package:krishighar/screens/Market_screen/Market_tabController/market_tabScreen.dart';
import 'package:krishighar/screens/News/news_screen.dart';
import 'package:krishighar/screens/cart/cart_screen.dart';
import 'package:krishighar/screens/profile/profile_scren.dart';

class ButtonNavbar extends StatefulWidget {
  const ButtonNavbar({Key? key}) : super(key: key);

  @override
  State<ButtonNavbar> createState() => _ButtonNavbarState();
}

class _ButtonNavbarState extends State<ButtonNavbar> {
  int _selectedIndex = 0;

  List<Widget> _screens = [
    HomeTabContainerScreen(),
    MarketTabContainerScreen(),

    // MarketScreen(),
    CartScreen(),
    NewsScreen(),
    ProfileScreen(),
  ];

  void _onTabChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 0),
        child: AppBar(backgroundColor: Color.fromARGB(255, 2, 141, 7)),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: Container(
        color: const Color.fromARGB(255, 12, 143, 23),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
          child: GNav(
            backgroundColor: const Color.fromARGB(255, 12, 143, 23),
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: const Color.fromARGB(255, 3, 179, 0),
            gap: 5,
            padding: const EdgeInsets.all(10),
            selectedIndex: _selectedIndex,
            onTabChange: _onTabChanged,
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.shopping_bag_sharp,
                text: 'Market ',
              ),
              GButton(
                icon: Icons.shopping_cart_checkout_sharp,
                text: 'Cart',
              ),
              GButton(
                icon: Icons.newspaper,
                text: 'News',
              ),
              GButton(
                icon: Icons.person,
                text: 'profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
