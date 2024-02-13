import 'package:flutter/material.dart';
import 'package:stayz/constants/resources/asset_manegar.dart';
import 'package:stayz/constants/resources/mycolors.dart';
import 'package:stayz/presintation/screens/home_screen.dart';
import 'package:stayz/presintation/screens/search.dart';
import 'package:stayz/presintation/screens/settings_screen.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  List<Widget> pages = [
    const SettingsScreen(),
    HomeScreen(),
    const SearchScreen(),
  ];
  List<String> titles = ['settings', 'home', 'search'];

  var currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: kBottomNavigationBarHeight + 30,
            decoration: const BoxDecoration(color: Colors.black, boxShadow: [
              BoxShadow(
                  color: MyColors.green,
                  blurRadius: 10,
                  spreadRadius: 14,
                  offset: Offset(.5, 15)),
            ]),
            child: ClipPath(
              clipper: CurvedClipper(),
              child: BottomNavigationBar(
                selectedItemColor: MyColors.green,
                unselectedItemColor: Colors.white,
                backgroundColor: MyColors.grey2,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                elevation: 4,
                onTap: onTap,
                currentIndex: currentIndex,
                items: const [
                  BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage(ImageAssets.eleven),
                      size: 30,
                    ),
                    label: 'settings',
                  ),
                  BottomNavigationBarItem(
                      icon: Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: ImageIcon(
                          AssetImage(ImageAssets.thirty),
                          size: 30,
                        ),
                      ),
                      label: 'home'),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage(ImageAssets.twelve),
                        size: 30,
                      ),
                      label: 'search'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}

class CurvedClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, 0);
    path.quadraticBezierTo(size.width / 2, 65, size.width / 1, 0);
    path.quadraticBezierTo(4 / 4 * size.width, 0, size.width, 0);
    path.lineTo(size.width, size.height + 50);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
