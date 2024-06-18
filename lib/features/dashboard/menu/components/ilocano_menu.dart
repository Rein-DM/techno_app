import 'package:flutter/material.dart';

import '../../../../constants/assets.dart';

class IlocanoMenuScreen extends StatelessWidget {
  const IlocanoMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> dishes = [
      {
        'name': 'Sour Pork',
        'price': '₱120.000',
        'image': Assets.techfood5,
        'sold': '10k Solds',
      },
      {
        'name': 'Lechon',
        'price': '₱120.000',
        'image': Assets.techfood6,
        'sold': '10k Solds',
      },
      {
        'name': 'Pancit Kanton',
        'price': '₱120.000',
        'image': Assets.techfood3,
        'sold': '10k Solds',
      },
      {
        'name': 'Kare - Kare',
        'price': '₱120.000',
        'image': Assets.techfood4,
        'sold': '10k Solds',
      },
      {
        'name': 'Bulalo',
        'price': '₱120.000',
        'image': Assets.techfood7,
        'sold': '10k Solds',
      },
      {
        'name': 'Liampo',
        'price': '₱120.000',
        'image': Assets.techfood8,
        'sold': '10k Solds',
      },
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 4, bottom: 20),
              child: Row(
                children: [
                  Image.asset(
                    Assets.icMenuLabel,
                    height: 34,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      border: Border(
                        top: BorderSide(color: Colors.black),
                        bottom: BorderSide(color: Colors.black),
                        right: BorderSide(color: Colors.black),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(width: 8),
                        Text(
                          'Ilocano',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 35.0, left: 35),
              child: GridView.count(
                crossAxisCount: 2,
                physics: const NeverScrollableScrollPhysics(),
                childAspectRatio: 0.8,
                shrinkWrap: true,
                children: List.generate(
                  dishes.length,
                  (index) {
                    var dish = dishes[index];
                    return Stack(
                      children: [
                        Positioned(
                          left: 8,
                          right: 8,
                          child: Column(
                            children: [
                              Container(
                                width: 163,
                                height: 183,
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
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Center(
                                        child: SizedBox(
                                          child: ClipRRect(
                                            clipBehavior: Clip.hardEdge,
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(7),
                                              topRight: Radius.circular(7),
                                            ),
                                            child: Image.asset(
                                              dish['image']!,
                                              fit: BoxFit.fill,
                                              height: 117,
                                              width: 115,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            dish['name']!,
                                            textAlign: TextAlign.start,
                                            style: const TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 16,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Text(
                                            dish['price']!,
                                            textAlign: TextAlign.start,
                                            style: const TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 16,
                                              color: Colors.black,
                                            ),
                                          ),
                                          const SizedBox(height: 4),
                                          // Row(
                                          //   children: [
                                          //     const Icon(
                                          //       Icons.star,
                                          //       size: 16,
                                          //       color: Colors.orange,
                                          //     ),
                                          //     const Icon(
                                          //       Icons.star,
                                          //       size: 16,
                                          //       color: Colors.orange,
                                          //     ),
                                          //     const Icon(
                                          //       Icons.star,
                                          //       size: 16,
                                          //       color: Colors.orange,
                                          //     ),
                                          //     const Icon(
                                          //       Icons.star,
                                          //       size: 16,
                                          //       color: Colors.orange,
                                          //     ),
                                          //     const Icon(
                                          //       Icons.star,
                                          //       size: 16,
                                          //       color: Colors.orange,
                                          //     ),
                                          //     const SizedBox(width: 4),
                                          //     Text(
                                          //       dish['sold']!,
                                          //       style: const TextStyle(
                                          //         color: Colors.grey,
                                          //         fontSize: 12.0,
                                          //       ),
                                          //     ),
                                          //   ],
                                          // ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
