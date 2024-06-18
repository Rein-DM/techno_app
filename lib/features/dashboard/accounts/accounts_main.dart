import 'package:flutter/material.dart';

import '../../../constants/assets.dart';

class AccountMain extends StatefulWidget {
  const AccountMain({Key? key}) : super(key: key);

  @override
  State<AccountMain> createState() => _AccountMainState();
}

class _AccountMainState extends State<AccountMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Account Information',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
        ),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        titleTextStyle: const TextStyle(color: Colors.black, fontSize: 20),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFFE7E7ED),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person, size: 40, color: Colors.white),
                  ),
                  const SizedBox(width: 16),
                  const Expanded(
                    child: Text(
                      'Juan C. Tamad',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.settings, size: 30),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFFE7E7ED),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'FoodHub Wallet',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'PHP',
                                style: TextStyle(
                                  fontSize: 9,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                '100.00',
                                style: TextStyle(
                                  fontSize: 9,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Payment Option',
                                style: TextStyle(
                                  fontSize: 9,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                '500.00',
                                style: TextStyle(
                                  fontSize: 9,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'My Favorites',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  FavoriteItem(
                    image: Assets.techfood5,
                    title: 'Sour Pork',
                    price: '₱120.000',
                    sold: '10k Sold',
                    star1: Assets.star,
                    star2: Assets.star,
                    star3: Assets.star,
                    star4: Assets.star,
                    star5: Assets.star,
                  ),
                  FavoriteItem(
                    image: Assets.techfood6,
                    title: 'Lechon',
                    price: '₱120.000',
                    sold: '10k Sold',
                    star1: Assets.star,
                    star2: Assets.star,
                    star3: Assets.star,
                    star4: Assets.star,
                    star5: Assets.star,
                  ),
                  FavoriteItem(
                    image: Assets.techfood3,
                    title: 'Pancit Kanton',
                    price: '₱120.000',
                    sold: '10k Sold',
                    star1: Assets.star,
                    star2: Assets.star,
                    star3: Assets.star,
                    star4: Assets.star,
                    star5: Assets.star,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10.0, left: 15),
                  child: Container(
                    height: 150,
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
                            height: 140,
                            width: 200,
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
          ],
        ),
      ),
    );
  }
}

class FavoriteItem extends StatelessWidget {
  final String image;
  final String title;
  final String price;
  final String sold;
  final String star1;
  final String star2;
  final String star3;
  final String star4;
  final String star5;

  const FavoriteItem({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
    required this.sold,
    required this.star1,
    required this.star2,
    required this.star3,
    required this.star4,
    required this.star5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 120,
      margin: const EdgeInsets.only(right: 16),
      child: Column(
        children: [
          Container(
            width: 100,
            height: 140,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: const Color(0xFFE5E7EB),
              border: Border.all(),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(5, 5),
                ),
              ],
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(7),
                topRight: Radius.circular(7),
                bottomLeft: Radius.circular(7),
                bottomRight: Radius.circular(7),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Center(
                    child: SizedBox(
                      child: ClipRRect(
                        clipBehavior: Clip.hardEdge,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(7),
                          topRight: Radius.circular(7),
                        ),
                        child: Image.asset(
                          image,
                          fit: BoxFit.fill,
                          height: 90,
                          width: 90,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            title,
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 9,
                              color: Colors.black,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 2.0),
                            child: SizedBox(
                              width: 5,
                              height: 5,
                              child: Image.asset(star3),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 0.0),
                            child: SizedBox(
                              width: 5,
                              height: 5,
                              child: Image.asset(star3),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 0.0),
                            child: SizedBox(
                              width: 5,
                              height: 5,
                              child: Image.asset(star3),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 0.0),
                            child: SizedBox(
                              width: 5,
                              height: 5,
                              child: Image.asset(star3),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 0.0),
                            child: SizedBox(
                              width: 5,
                              height: 5,
                              child: Image.asset(star3),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        price,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 10,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 4),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
