import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';

class Pagewithappbar extends StatefulWidget {
  const Pagewithappbar({super.key});

  @override
  State<Pagewithappbar> createState() => _PagewithappbarState();
}

class _PagewithappbarState extends State<Pagewithappbar> {
  int _page = 2;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: _page,
          items: [
            CurvedNavigationBarItem(
              child: Icon(
                Icons.chat_bubble_outline,
                color: _page == 0 ? Colors.white : Colors.grey,
              ),
              // label: 'Home',
            ),
            CurvedNavigationBarItem(
              child: Icon(
                Icons.search,
                color: _page == 1 ? Colors.white : Colors.grey,
              ),
              // label: 'Search',
            ),
            CurvedNavigationBarItem(
              child: Icon(
                Icons.home_outlined,
                color: _page == 2 ? Colors.white : Colors.grey,
              ),
              // label: 'Chat',
            ),
            CurvedNavigationBarItem(
              child: Icon(
                Icons.newspaper,
                color: _page == 3 ? Colors.white : Colors.grey,
              ),
              // label: 'Feed',
            ),
            CurvedNavigationBarItem(
              child: Icon(
                Icons.perm_identity,
                color: _page == 4 ? Colors.white : Colors.grey,
              ),
              // label: 'Personal',
            ),
          ],
          height: 60,
          color: Colors.white,
          buttonBackgroundColor: const Color(0xffff6812),
          backgroundColor: Colors.transparent,
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 600),
          onTap: (value) {},
          letIndexChange: (value) => true,
        ),
        appBar: AppBar(
          title: const Text("data"),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 300,
              child: PageView(
                controller: PageController(initialPage: _page),
                onPageChanged: (value) {
                  setState(() {
                    _page = value;
                  });
                },
                children: const [
                  Text("data1"),
                  Text("data2"),
                  Text("data3"),
                  Text("data4"),
                  Text("data5"),
                ],
              ),
            ),
          ],
        ));
  }
}
