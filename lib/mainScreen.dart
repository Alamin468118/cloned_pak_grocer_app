import 'package:cloned_pak_grocer_app/pages/promotion_page.dart';
import 'package:flutter/material.dart';

import 'pages/account.dart';
import 'pages/card.dart';
import 'pages/homepage.dart';
import 'pages/perks.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
    late List<Widget> pages;
    late Widget currentPage;
    late HomePage homepage;
    late Promotion promotion;
    late Perks perks;
    late Cards cards;
    late Account account;

    @override
    void initState(){
      super.initState();
      homepage = HomePage();
      promotion = Promotion();
      perks = Perks();
      cards = Cards();
      account = Account();
      pages = [homepage, promotion, perks, cards, account];
      currentPage = homepage;
    }

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            currentIndex = index;
            currentPage = pages[index];
          });
        },
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_outlined),
            label: 'promotion',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'perks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.co_present_rounded),
            label: 'cards',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin),
            label: 'account',
          ),
        ],
      ),
      body: currentPage,
    );
  }
}
