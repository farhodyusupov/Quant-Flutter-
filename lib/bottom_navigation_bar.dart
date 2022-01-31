import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quant_flutter_new/home/ui/home_page.dart';
import 'package:quant_flutter_new/izbrannoy/ui/isbrannoy_page.dart';
import 'package:quant_flutter_new/uslugi/ui/uslugi_page.dart';
import 'constants.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  var _selectedIndex = 1;

  @override
  void initState() {
    super.initState();
  }

  var screens = [
    UslugiPage(),
    HomePage(),
    IzbrannoyPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: _selectedIndex,
        selectedItemColor: kPrimaryColor,
        unselectedItemColor: kPrimaryColor,
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w300, color: kPrimaryColor),
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset("assets/icons/diamond_fill.svg", color: kPrimaryColor),
            icon: SvgPicture.asset("assets/icons/diamond_border.svg", color: kPrimaryColor),
            label: "Услуги",
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset("assets/icons/home_nav.svg", color: kPrimaryColor),
            icon: SvgPicture.asset("assets/icons/no_color_home.svg", color: kPrimaryColor),
            label: "Главная",
            // label: AppLocalizations.of(context)!.orders_bottom_nav,
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset("assets/icons/favourite_fill.svg", color: kPrimaryColor),
            icon: SvgPicture.asset("assets/icons/favourite.svg", color: kPrimaryColor),
            label: "Избранные",
            // label: AppLocalizations.of(context)!.profile_bottom_nav,
          ),
        ],
      ),
    );
  }
}