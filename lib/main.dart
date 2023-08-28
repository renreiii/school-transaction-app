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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: AppColors.baseBackgroundColor,
          padding: EdgeInsets.all(screenWidth * 0.01),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 75,
                height: 1000,
                decoration: BoxDecoration(
                  color: AppColors.mainColorPurple,
                  borderRadius: BorderRadius.circular(0),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: SvgPicture.asset(
                          'assets/navigation-bar/icons/nav-side-logo.svg',
                          width: 36,
                        ),
                      ),
                      Container(
                        height: 250,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(
                              'assets/navigation-bar/icons/nav-side-home.svg',
                              width: 24,
                            ),
                            SvgPicture.asset(
                              'assets/navigation-bar/icons/nav-side-pos-pembayaran.svg',
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
                              'assets/navigation-bar/icons/nav-side-cog.svg',
                              width: 24,
                            ),
                            SvgPicture.asset(
                              'assets/navigation-bar/icons/nav-side-logout.svg',
                              width: 24,
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
                    'assets/navigation-bar/icons/arrow-chevron-right.svg',
                    width: 8,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
