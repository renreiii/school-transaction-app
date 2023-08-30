import 'package:flutter/material.dart';
import 'colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class PosPembayaran extends StatelessWidget {
  const PosPembayaran({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    double globalPadding = screenWidth * 0.01;
    double globalBorderRadius = screenHeight * 0.01;
    double posPembayaranWidth = MediaQuery.of(context).size.width;
    double posPembayaranHeight = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pos Pembayaran',
              style: GoogleFonts.poppins(
                fontSize: 32,
                color: AppColors.primaryText,
                fontWeight: FontWeight.w700,
              ),
            ),
            Row(
              children: [
                Text(
                  'Home > Pos Pembayaran',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: AppColors.primaryText,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(width: 48),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.iris),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/nav-top-task.svg',
                        width: 20,
                      ),
                      SizedBox(width: 20),
                      SvgPicture.asset(
                        'assets/icons/nav-top-bell.svg',
                        width: 20,
                      ),
                      SizedBox(width: 20),
                      SvgPicture.asset(
                        'assets/icons/nav-top-mail.svg',
                        width: 25,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: screenWidth * 0.01),
        Container(
          width: screenWidth,
          padding: EdgeInsets.all(globalPadding),
          decoration: BoxDecoration(
            color: AppColors.baseWhite,
            borderRadius: BorderRadius.circular(globalBorderRadius),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Pos Pembayaran Management',
                style: GoogleFonts.poppins(
                    color: AppColors.primaryText,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 200,
                        child: SizedBox(
                          height: 35,
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 15),
                              hintText: 'Search . . .',
                              hintStyle: GoogleFonts.poppins(
                                fontWeight: FontWeight.w300,
                                color: AppColors.disabled,
                                fontSize: 15,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(
                                  color: AppColors.primaryText,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(
                                  color: AppColors.disabled.withOpacity(0.5),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: AppColors.disabled.withOpacity(0.5),
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: FittedBox(
                          fit: BoxFit.none,
                          child: SvgPicture.asset(
                            'assets/icons/posmanagement-filter.svg',
                            width: 12,
                            height: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: AppColors.disabled.withOpacity(0.5),
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: FittedBox(
                          fit: BoxFit.none,
                          child: SvgPicture.asset(
                            'assets/icons/tripledot.svg',
                            width: 16,
                            height: 16,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        height: 35,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: AppColors.disabled.withOpacity(0.5),
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            'Export',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              color: AppColors.primaryText,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.mainColorPurple,
                        ),
                        child: Center(
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: '+ ',
                                  style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    color: AppColors.baseWhite,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Add',
                                  style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    color: AppColors.baseWhite,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
