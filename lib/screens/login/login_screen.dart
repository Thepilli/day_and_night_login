import 'package:day_night_login/constants/applystyle.dart';
import 'package:day_night_login/constants/colors.dart';
import 'package:day_night_login/screens/login/widgets/tab_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

void Function(int)? onTap;

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF872477),
              Color(0xFFFF9485),
            ],
          ),
        ),
        child: Stack(
          children: [
            //sun
            Positioned(
              bottom: -60.w,
              left: 30.w,
              child: SvgPicture.asset('assets/icons/Sun.svg'),
            ),
            // body
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SafeArea(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 50.h),
                  TabSwitch(
                    width: width,
                    onTap: (int value) {
                      debugPrint(value.toString());
                    },
                  ),
                  SizedBox(height: 25.h),
                  Text(
                    "Gooood Morning!",
                    style: appstyle(30, AppColors.whiteColor, FontWeight.w200),
                  ),
                  Text(
                    "To log in, pelase enter your information below!",
                    style: appstyle(15, AppColors.whiteColor, FontWeight.w200),
                  ),
                  SizedBox(height: 25.h),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.blackColor.withOpacity(.2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextField(
                      onTapOutside: (event) {
                        FocusManager.instance.primaryFocus?.unfocus();
                      },
                      // controller: emailController,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.email_outlined),
                        prefixIconColor: AppColors.whiteColor,
                        floatingLabelAlignment: FloatingLabelAlignment.start,
                        alignLabelWithHint: true,
                        label: Text('Email', style: appstyle(15, AppColors.whiteColor, FontWeight.normal)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(width: 2, color: AppColors.whiteColor.withOpacity(.5)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(width: 2, color: AppColors.whiteColor),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 25.h),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.blackColor.withOpacity(.2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextField(
                      obscureText: true,
                      obscuringCharacter: '*',
                      onTapOutside: (event) {
                        FocusManager.instance.primaryFocus?.unfocus();
                      },
                      // controller: emailController,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock),
                        prefixIconColor: AppColors.whiteColor,
                        floatingLabelAlignment: FloatingLabelAlignment.start,
                        alignLabelWithHint: true,
                        label: Text('Password', style: appstyle(15, AppColors.whiteColor, FontWeight.normal)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(width: 2, color: AppColors.whiteColor.withOpacity(.5)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(width: 2, color: AppColors.whiteColor),
                        ),
                      ),
                    ),
                  ),
                  //
                ],
              )),
            ),
            //land
            Positioned(
              bottom: -65.w,
              right: 0,
              left: 0,
              child: Image.asset(
                'assets/images/land_tree_light.png',
                height: 400.h,
                fit: BoxFit.fitHeight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
