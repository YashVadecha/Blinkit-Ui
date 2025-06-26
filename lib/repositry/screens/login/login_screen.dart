import 'package:blinkit_app/domain/constants/app_colors.dart';
import 'package:blinkit_app/repositry/screens/bottomnav/bottomnav_screen.dart';
import 'package:blinkit_app/repositry/widgets/ui_helper.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                UiHelper.CustomImage(img: 'Blinkit Onboarding Screen.png'),
                const SizedBox(height: 10),

                /// Logo
                UiHelper.CustomImage(img: 'logo.png'),
                const SizedBox(height: 10),
                UiHelper.CustomText(
                  text: 'India’s last minute app',
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontsize: 20,
                  fontfamily: 'bold',
                ),
                const SizedBox(height: 18),

                /// Container Section
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    height: 200,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        UiHelper.CustomText(
                            text: 'Yash',
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontsize: 15),
                        const SizedBox(
                          height: 5,
                        ),
                        UiHelper.CustomText(
                            text: '78277XXXX',
                            fontfamily: 'bold',
                            color: AppColors.textgraycolor,
                            fontWeight: FontWeight.w700,
                            fontsize: 14),
                        const SizedBox(
                          height: 10,
                        ),

                        /// Button Section
                        SizedBox(
                            height: 48,
                            width: 295,
                            child: MaterialButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const BottomNavScreen(),));
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              color: AppColors.btnredcolor,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  UiHelper.CustomText(
                                      text: 'Login  with',
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontsize: 14,
                                      fontfamily: 'bold'),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  UiHelper.CustomImage(img: 'zomato_logo.png')
                                ],
                              ),
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        UiHelper.CustomText(
                            text:
                                'Access your saved addresses from Zomato automatically!',
                            color: AppColors.textgraycolor,
                            fontWeight: FontWeight.w400,
                            fontsize: 10),
                        const SizedBox(
                          height: 30,
                        ),
                        UiHelper.CustomText(
                            text: 'or login with phone number',
                            color: AppColors.textgreencolor,
                            fontWeight: FontWeight.w400,
                            fontsize: 14)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
