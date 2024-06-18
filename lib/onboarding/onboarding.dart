import 'package:flutter/material.dart';

import '../constants/assets.dart';
import '../features/dashboard/main_screen.dart';
import 'onboarding_model.dart';
import 'unboardlist.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController pageController = PageController();
  int pageIndex = 0;

  List<OnboardingModel> onboardingList = const [
    OnboardingModel(
      image: Assets.onboarding1,
      description: Strings.onboardingDescription1,
    ),
    OnboardingModel(
      image: Assets.onboarding2,
      description: Strings.onboardingDescription2,
    ),
    OnboardingModel(
      image: Assets.onboarding3,
      description: Strings.onboardingDescription3,
    ),
  ];

  void onPageChanged(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  void nextPage() {
    if (pageIndex == onboardingList.length - 1) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => const MainScreen(
                  title: '',
                )),
      );
    } else {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFF9A24),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: pageController,
              onPageChanged: onPageChanged,
              itemCount: onboardingList.length,
              itemBuilder: (context, index) {
                var data = onboardingList[index];
                return Padding(
                  padding: const EdgeInsets.only(top: 44, bottom: 44),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Image.asset(
                          data.image,
                          height: 300,
                          width: 300,
                        ),
                      ),
                      const SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(onboardingList.length, (index) {
                          return Container(
                            margin: const EdgeInsets.symmetric(horizontal: 4),
                            width: 27,
                            height: 5,
                            decoration: BoxDecoration(
                              color: pageIndex == index
                                  ? Colors.white
                                  : Colors.black,
                              borderRadius: BorderRadius.circular(5),
                            ),
                          );
                        }),
                      ),
                      const SizedBox(height: 40),
                      Text(
                        data.description,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 21,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              margin: const EdgeInsets.all(24),
              child: TextButton(
                onPressed: nextPage,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: const BorderSide(color: Colors.white, width: 1),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                ),
                child: Text(
                  pageIndex == 0
                      ? Strings.next
                      : pageIndex == 1
                          ? Strings.next
                          : Strings.getStarted,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
