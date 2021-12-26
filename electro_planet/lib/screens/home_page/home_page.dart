import 'package:electro_planet/screens/message_screen/message_screen.dart';
import 'package:electro_planet/screens/profile_page/profile_page.dart';
import 'package:electro_planet/widgets/bottom_bar.dart';
import 'package:electro_planet/widgets/product_item.dart';
import 'package:flutter/material.dart';

import 'products_page/products_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final _inactiveColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("Electro Planet"),
          backgroundColor: Colors.green[200],
        ),
        body: getBody(),
        bottomNavigationBar: _buildBottomBar());
  }

  Widget _buildBottomBar() {
    return CustomAnimatedBottomBar(
      containerHeight: 70,
    backgroundColor: Colors.green[200],
      selectedIndex: _currentIndex,
      showElevation: true,
      itemCornerRadius: 24,
      curve: Curves.easeIn,
      onItemSelected: (index) => setState(() => _currentIndex = index),
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
          icon: Icon(Icons.account_balance_outlined),
          title: Text('The Shops'),
          activeColor: Colors.black,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.shopping_cart),
          title: Text('Products'),
          activeColor: Colors.black,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.message),
          title: Text(
            'Messages ',
          ),
          activeColor: Colors.black,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.people),
          title: Text('Profile'),
          activeColor: Colors.black,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget getBody() {
    List<Widget> pages = [
      Container(
        alignment: Alignment.center,
        child: ListView.separated(
          itemCount: 6,
          itemBuilder: (BuildContext context, int index) {
            return const Padding(
              padding: EdgeInsets.all(15.0),
              child: ProductItem(),
            );
          },
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
        ),
      ),
      Container(
        alignment: Alignment.center,
        child: const ProductsPage(),
      ),
      Container(
        alignment: Alignment.center,
        child: const MessageScreen(),
      ),
      Container(
        alignment: Alignment.center,
        child:  ProfilePage()
      ),
    ];
    return IndexedStack(
      index: _currentIndex,
      children: pages,
    );
  }
}
