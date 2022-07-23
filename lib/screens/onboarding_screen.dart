import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onboarding_tutorial/constants.dart';
import 'package:onboarding_tutorial/models/onboard.dart';
import 'package:onboarding_tutorial/widgets/onboard_item.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _pageController;

  int _currentIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: sliderItems.length,
                  onPageChanged: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return OnBoardItem(
                      onBoard: sliderItems[index],
                    );
                  },
                ),
              ),
              Row(
                children: [
                  ...List.generate(
                    sliderItems.length,
                    (index) {
                      return AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        width: _currentIndex == index ? 12 : 4,
                        height: 4,
                        margin: const EdgeInsets.only(right: 2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: _currentIndex == index
                              ? kprimaryColor
                              : Colors.grey.shade400,
                        ),
                      );
                    },
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.ease,
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: kprimaryColor,
                        shape: const CircleBorder(),
                      ),
                      child: const Icon(CupertinoIcons.chevron_forward),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
