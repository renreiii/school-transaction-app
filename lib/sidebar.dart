import 'package:flutter/material.dart';
import 'colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';
import 'pos-pembayaran.dart';

class Sidebar extends StatefulWidget {
  const Sidebar({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  bool isExpanded = false;

  void toggleExpansion() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double globalPadding = screenWidth * 0.01;

    return Stack(
      clipBehavior: Clip.none,
      fit: StackFit.loose,
      alignment: Alignment.topLeft,
      children: [
        Row(
          children: [
            SizedBox(width: screenWidth * 0.075,),
            Container(
              width: (widget.screenWidth - globalPadding * 2) - screenWidth * 0.075,
              height: widget.screenHeight,
              child: PosPembayaran(screenHeight: screenHeight, screenWidth: screenWidth,),
            ),
          ],
        ),
        AnimatedPositioned(
          curve: Curves.fastOutSlowIn,
          width: isExpanded ? screenWidth * 0.2 : screenWidth * 0.05,
          duration: Duration(milliseconds: 200),
          child: Container(
            height: screenHeight - globalPadding * 2,
            decoration: BoxDecoration(
              color: AppColors.mainColorPurple,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (isExpanded)
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: screenWidth * 0.01184),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            'assets/icons/nav-side-logo.svg',
                            width: screenWidth * 0.026385,
                          ),
                          SizedBox(width: 20),
                          Text(
                            'MyApp',
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              color: AppColors.baseWhite,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (!isExpanded)
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: (screenWidth * 0.01184) - 0.0469),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/nav-side-logo.svg',
                            width: screenWidth * 0.026385,
                          ),
                        ],
                      ),
                    ),
                  if (isExpanded)
                    Container(
                      height: widget.screenHeight * 0.5,
                      padding: EdgeInsets.symmetric(
                          horizontal: screenWidth * 0.01331),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/icons/nav-side-home.svg',
                                width: screenWidth * 0.023439,
                              ),
                              SizedBox(width: 20),
                              Text(
                                'Dashboard',
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  color: AppColors.baseWhite,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: widget.screenHeight * 0.05),
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/icons/nav-side-pos-pembayaran.svg',
                                width: screenWidth * 0.023439,
                              ),
                              SizedBox(width: 20),
                              Text(
                                'Pos Pembayaran',
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  color: AppColors.baseWhite,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  if (!isExpanded)
                    Container(
                      height: widget.screenHeight * 0.5,
                      padding: EdgeInsets.symmetric(
                          horizontal: (screenWidth * 0.01331) - 0.0629),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/icons/nav-side-home.svg',
                                width: screenWidth * 0.023439,
                              ),
                            ],
                          ),
                          SizedBox(height: widget.screenHeight * 0.05),
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/icons/nav-side-pos-pembayaran.svg',
                                width: screenWidth * 0.023439,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  if (isExpanded)
                    Container(
                      height: widget.screenHeight * 0.125,
                      padding: EdgeInsets.symmetric(
                          horizontal: screenWidth * 0.01476),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/icons/nav-side-cog.svg',
                                width: 28,
                              ),
                              SizedBox(width: 20),
                              Text(
                                'Settings',
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  color: AppColors.baseWhite,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/icons/nav-side-logout.svg',
                                width: 28,
                              ),
                              SizedBox(width: 20),
                              Text(
                                'Logout',
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  color: AppColors.baseWhite,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  if (!isExpanded)
                    Container(
                      height: widget.screenHeight * 0.125,
                      padding: EdgeInsets.symmetric(
                          horizontal: (screenWidth * 0.01476) - 0.0243),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/icons/nav-side-cog.svg',
                                width: 28,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/icons/nav-side-logout.svg',
                                width: 28,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
        AnimatedPositioned(
          curve: Curves.fastOutSlowIn,
          duration: Duration(milliseconds: 200),
          left: isExpanded
              ? (screenWidth * 0.2) - (screenWidth * 0.05 * 0.2)
              : (screenWidth * 0.05) - (screenWidth * 0.05 * 0.2),
          top: widget.screenHeight * 0.15,
          child: GestureDetector(
            onTap: toggleExpansion,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.baseWhite,
                shape: BoxShape.circle,
              ),
              child: Transform(
                transform: Matrix4.rotationY(isExpanded ? pi : 0),
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  'assets/icons/arrow-chevron-right.svg',
                  // ignore: deprecated_member_use
                  color: AppColors.mainColorPurple,
                  width: 8,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
