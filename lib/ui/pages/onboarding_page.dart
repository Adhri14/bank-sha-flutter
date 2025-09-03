import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:test_flutter_app/shared/theme.dart';
import 'package:test_flutter_app/ui/widgets/buttons.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentIndex = 0;
  CarouselSliderController carouselSliderController =
      CarouselSliderController();

  final List<Widget> onboardingImages = [
    Image.asset('assets/img_onboarding1.png', height: 331),
    Image.asset('assets/img_onboarding2.png', height: 331),
    Image.asset('assets/img_onboarding3.png', height: 331),
  ];

  final List<Map<String, String>> onboardingTexts = [
    {
      'title': 'Grow Your\n Financial Today',
      'subtitle': 'Our system is helping you to achieve a better goal',
    },
    {
      'title': 'Build From\n Zero to Freedom',
      'subtitle': 'We provide tips for you so that you can adapt easier',
    },
    {
      'title': 'Start Together',
      'subtitle': 'We will guide you to where you wanted it too',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider(
              items: onboardingImages,
              options: CarouselOptions(
                height: 331,
                viewportFraction: 1,
                enableInfiniteScroll: false,
                onPageChanged: (index, reason) => setState(() {
                  currentIndex = index;
                }),
              ),
              carouselController: carouselSliderController,
            ),
            const SizedBox(height: 80),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 22),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Text(
                    onboardingTexts[currentIndex]['title'].toString(),
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: semiBold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 26),
                  Text(
                    onboardingTexts[currentIndex]['subtitle'].toString(),
                    style: greyTextStyle.copyWith(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: currentIndex == onboardingImages.length - 1
                        ? 26
                        : 50,
                  ),
                  if (currentIndex == onboardingImages.length - 1)
                    Column(
                      children: [
                        ButtonFilled(
                          title: "Get Started",
                          textStyle: whiteTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: semiBold,
                          ),
                          backgroundColor: purpleColor,
                          onPressed: () {
                            Navigator.pushNamedAndRemoveUntil(
                              context,
                              '/signup',
                              (Route<dynamic> route) => false,
                            );
                          },
                        ),
                        SizedBox(height: 10),
                        ButtonFilled(
                          title: "Sign In",
                          textStyle: greyTextStyle.copyWith(fontSize: 16),
                          onPressed: () {
                            Navigator.pushNamedAndRemoveUntil(
                              context,
                              '/signin',
                              (Route<dynamic> route) => false,
                            );
                          },
                        ),
                      ],
                    )
                  else
                    Row(
                      children: [
                        ...onboardingImages.asMap().entries.map((entry) {
                          int index = entry.key;
                          return Container(
                            width: 12,
                            height: 12,
                            margin: const EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: currentIndex == index
                                  ? blueColor
                                  : lightGreyColor,
                            ),
                          );
                        }),
                        Spacer(),
                        ButtonFilled(
                          title: "Continue",
                          onPressed: () {
                            carouselSliderController.nextPage();
                          },
                          textStyle: whiteTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: semiBold,
                          ),
                          backgroundColor: purpleColor,
                          width: 150,
                          height: 50,
                        ),
                      ],
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
