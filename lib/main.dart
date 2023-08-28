import 'package:flutter/material.dart';
import 'colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: AppColors.baseBackgroundColor,
          padding: EdgeInsets.all(screenWidth * 0.01),
          child: Row(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: screenWidth * 0.05,
                    height: screenHeight,
                    decoration: BoxDecoration(
                      color: AppColors.mainColorPurple,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: SvgPicture.asset(
                              'assets/icons/nav-side-logo.svg',
                              width: 36,
                            ),
                          ),
                          Container(
                            height: 250,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/nav-side-home.svg',
                                  width: 24,
                                ),
                                SvgPicture.asset(
                                  'assets/icons/nav-side-pos-pembayaran.svg',
                                  width: 24,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 48 + 32.5,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/nav-side-cog.svg',
                                  width: 24,
                                ),
                                SvgPicture.asset(
                                  'assets/icons/nav-side-logout.svg',
                                  width: 20,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 60,
                    top: 100,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: AppColors.baseWhite,
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/arrow-chevron-right.svg',
                        color: AppColors.mainColorPurple,
                        width: 8,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
