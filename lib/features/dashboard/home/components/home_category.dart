import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../details/details_category.dart';

class HomeCategory extends StatelessWidget {
  const HomeCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 200, bottom: 6, top: 10),
          child: const Text(
            'Food Category',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 30.0),
          child: SizedBox(
            height: 80,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: categoryhead.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                var categoryinfo = categoryhead[index];
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    Stack(
                      children: [
                        Container(
                          width: 91,
                          height: 75,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.white,
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
                                bottomRight: Radius.circular(7)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 53,
                                    height: 54,
                                    child: Image.asset(
                                      categoryinfo.icon,
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        categoryinfo.title,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 13,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
