import 'package:flutter/material.dart';

import '../../../constants/assets.dart';
import 'components/home_category.dart';
import 'components/home_popular.dart';

class HomeMain extends StatefulWidget {
  const HomeMain({super.key, required String title});

  @override
  State<HomeMain> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: Column(
          children: [
            AppBar(
              automaticallyImplyLeading: false,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search),
                    iconSize: 40,
                  ),
                  Image.asset(
                    Assets.techlogo,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications_none_outlined),
                    iconSize: 40,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              height: 2.0,
              color: Colors.grey,
              width: 370,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(6),
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10.0, left: 15),
                  child: Container(
                    height: 164,
                    width: 390,
                    decoration: const BoxDecoration(
                      color: Color(0xFFAD681A),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 10,
                          left: 167,
                          child: Image.asset(
                            Assets.techdiscount,
                            height: 160,
                            width: 220,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                width: 190,
                                child: Text(
                                  'Your First Order Gets',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 24,
                                    color: Colors.white,
                                  ),
                                  maxLines: 2,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                  color: Colors.white54,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.only(right: 10, left: 10),
                                  child: Text(
                                    '55% Off',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const HomeCategory(),
            const SizedBox(
              height: 15,
            ),
            const HomePopular(),
          ],
        ),
      ),
    );
  }
}
