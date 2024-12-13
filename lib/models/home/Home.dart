import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:e_commers/models/page_with_cut_nav/pagewithappbar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();
int _page = 2;
GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

List categories = [
  {
    "type": "shoses",
    "name": "Shoses",
    "image":
        "https://noraydesigns.com/cdn/shop/articles/types_of_gold_jewelry.jpg?v=1610129125",
  },
  {
    "type": "deauty",
    "name": "Beauty",
    "image":
        "https://noraydesigns.com/cdn/shop/articles/types_of_gold_jewelry.jpg?v=1610129125",
  },
  {
    "type": "women",
    "name": "Women's Fashion",
    "image":
        "https://noraydesigns.com/cdn/shop/articles/types_of_gold_jewelry.jpg?v=1610129125",
  },
  {
    "type": "jewelry",
    "name": "Jewelry",
    "image":
        "https://noraydesigns.com/cdn/shop/articles/types_of_gold_jewelry.jpg?v=1610129125",
  },
  {
    "type": "men",
    "name": "Men's Fashion",
    "image":
        "https://noraydesigns.com/cdn/shop/articles/types_of_gold_jewelry.jpg?v=1610129125",
  },
  {
    "type": "kids",
    "name": "Kids",
    "image":
        "https://noraydesigns.com/cdn/shop/articles/types_of_gold_jewelry.jpg?v=1610129125",
  },
  {
    "type": "teenager",
    "name": "Teenager",
    "image":
        "https://noraydesigns.com/cdn/shop/articles/types_of_gold_jewelry.jpg?v=1610129125",
  },
];
// This list you can optimized it as you want and you can change some details like :
// - Images: If you want to use images form any website you can change image code from 'Image.asset()' to 'Image.network()' and change image path from this list to your url.
List product = [
  {
    "name": "Wireless Headphones",
    "price": "\$120",
    "fav": false,
    "colorif": false,
    "color1": "3390d1",
    "color2": "3390d1",
    "color3": "3390d1",
    "image": "assets/images/1.jpg",
  },
  {
    "name": "Woman Sweter",
    "price": "\$200",
    "fav": true,
    "colorif": true,
    "color1": "000000",
    "color2": "fd6d26",
    "color3": "3390d1",
    "image": "assets/images/2.jpg",
  },
  {
    "name": "Apple Phone",
    "price": "\$2000",
    "fav": false,
    "colorif": true,
    "color1": "ab8e8c",
    "color2": "6562c5",
    "color3": "ec6e41",
    "image": "assets/images/3.jpg",
  },
  {
    "name": "Samsung Galaxy",
    "price": "\$1900",
    "fav": false,
    "colorif": false,
    "color1": "3390d1",
    "color2": "3390d1",
    "color3": "3390d1",
    "image": "assets/images/4.jpg",
  },
  {
    "name": "HP Pavilion11",
    "price": "\$2500",
    "fav": false,
    "colorif": false,
    "color1": 000000,
    "color2": 000000,
    "color3": 000000,
    "image": "assets/images/5.jpg",
  },
  {
    "name": "HP Pavilion21",
    "price": "\$2500",
    "fav": false,
    "colorif": false,
    "color1": 000000,
    "color2": 000000,
    "color3": 000000,
    "image": "assets/images/2.jpg",
  },
  {
    "name": "HP Pavilion122",
    "price": "\$2500",
    "fav": false,
    "colorif": false,
    "color1": 000000,
    "color2": 000000,
    "color3": 000000,
    "image": "assets/images/7.jpg",
  },
  {
    "name": "HP Pavilion1312",
    "price": "\$2500",
    "fav": false,
    "colorif": false,
    "color2": 000000,
    "color1": 000000,
    "color3": 000000,
    "image": "assets/images/menu.png",
  },
  {
    "name": "HP Pavilion",
    "price": "\$2500",
    "fav": false,
    "colorif": false,
    "color2": 000000,
    "color1": 000000,
    "color3": 000000,
    "image": "assets/images/menu.png",
  },
  {
    "name": "HP Pavilion",
    "price": "\$2500",
    "fav": false,
    "colorif": false,
    "color1": 000000,
    "color2": 000000,
    "color3": 000000,
    "image": "assets/images/menu.png",
  },
];

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        key: scaffoldkey,
        drawer: const Drawer(),
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                scaffoldkey.currentState!.openDrawer();
              },
              icon: CircleAvatar(
                backgroundColor: const Color.fromARGB(255, 231, 231, 231),
                child: Container(
                    padding: const EdgeInsets.all(5),
                    child: Image.asset('assets/images/menu.png')),
              )),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      DialogRoute(
                        context: context,
                        builder: (context) => const Pagewithappbar(),
                      ));
                },
                icon: const CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 231, 231, 231),
                  child: Icon(Icons.notifications_none),
                )),
          ],
        ),
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 2,
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
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
          letIndexChange: (index) => true,
        ),
        body: PageView(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: const Color.fromARGB(255, 229, 229, 229)),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.search,
                              size: 30,
                              color: Color.fromARGB(255, 89, 89, 89),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              'Search...',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 89, 89, 89)),
                            ),
                            const Expanded(child: SizedBox()),
                            IconButton(
                                onPressed: () {},
                                icon: Image.asset(
                                  'assets/images/setting.png',
                                  errorBuilder: (BuildContext context,
                                      Object exception,
                                      StackTrace? stackTrace) {
                                    return const Text('Could not load image');
                                  },
                                  height: 23,
                                )),
                          ],
                        ),
                      ),
                    ),
                    // This Container For Discounts Cards.
                    Container(
                        // child: ,
                        ),
                    // This container for list of category.
                    Container(
                      height: 150,
                      padding: const EdgeInsets.all(10),
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: categories.length,
                        itemBuilder: (context, index) {
                          return Container(
                            padding: const EdgeInsets.all(8.0),
                            width: 120,
                            child: GestureDetector(
                              onTap: () {
                                // Put The Function what you want.
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 70,
                                    width: 70,
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Image.network(
                                      categories[index]['image'],
                                      fit: BoxFit.cover,
                                      errorBuilder: (BuildContext context,
                                          Object exception,
                                          StackTrace? stackTrace) {
                                        return const Text(
                                            'Could not load image');
                                      },
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    categories[index]["name"],
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    // This container for discount viewer
                    Container(),
                    // This column for the product
                    Column(
                      children: [
                        Row(
                          children: [
                            const Text(
                              "Special For You",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            const Expanded(child: SizedBox()),
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "See all",
                                  style: TextStyle(color: Color(0xff8a8a8a)),
                                )),
                          ],
                        ),
                        GridView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: product.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2),
                            itemBuilder: (context, Index) {
                              return Card(
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Stack(
                                          alignment:
                                              AlignmentDirectional.topEnd,
                                          children: [
                                            Expanded(
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.all(5),
                                                height: 100,
                                                width: double.infinity,
                                                child: Image.asset(
                                                  product[Index]["image"],
                                                  // scale: 100,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: 40,
                                              width: 40,
                                              padding: const EdgeInsets.all(10),
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(10)),
                                                color: Color(0xffff660b),
                                              ),
                                              child: const Icon(
                                                Icons.favorite_border,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.only(
                                                  start: 10),
                                          child: Row(
                                            children: [
                                              Text(
                                                product[Index]["name"],
                                                style: const TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.only(
                                                  start: 10),
                                          child: Row(
                                            children: [
                                              Text(
                                                product[Index]["price"],
                                                style: const TextStyle(
                                                    fontWeight:
                                                        FontWeight.w900),
                                              ),
                                              const Expanded(child: SizedBox()),
                                              Row(
                                                children: [
                                                  Container(
                                                    height: 15,
                                                    width: 15,
                                                    decoration: BoxDecoration(
                                                        color: const Color(
                                                            0xff000000),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(50)),
                                                  ),
                                                  const SizedBox(
                                                    width: 5,
                                                  ),
                                                  Container(
                                                    height: 15,
                                                    width: 15,
                                                    decoration: BoxDecoration(
                                                        color: const Color(
                                                            0xff6562c5),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(50)),
                                                  ),
                                                  const SizedBox(
                                                    width: 5,
                                                  ),
                                                  Container(
                                                    height: 15,
                                                    width: 15,
                                                    decoration: BoxDecoration(
                                                        color: const Color(
                                                            0xff3390d1),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(50)),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            })
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: const Column(
                children: [],
              ),
            )
          ],
        ));
  }
}
