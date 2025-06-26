import 'package:blinkit_app/domain/constants/app_colors.dart';
import 'package:blinkit_app/repositry/widgets/ui_helper.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {

  /// Controller
  TextEditingController SearchConroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [

            /// Custom AppBar
            Stack(
              children: [

                /// Container Section For AppBar
                Container(
                  height: 160,
                  width: double.infinity,
                  decoration:
                      const BoxDecoration(color: AppColors.appbaryellowcolor),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            UiHelper.CustomText(
                                text: 'Blinkit in',
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontsize: 12,
                                fontfamily: 'bold'),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            UiHelper.CustomText(
                                text: '16 minutes',
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontsize: 20,
                                fontfamily: 'bold'),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            UiHelper.CustomText(
                                text: 'HOME - ',
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontsize: 12,
                                fontfamily: 'bold'),
                            UiHelper.CustomText(
                                text: 'Yash Vadecha, Junagadh, Gujarat (GJ)',
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontsize: 12),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      /// SearchBar Section
                      UiHelper.CustomTextField(controller: SearchConroller)
                    ],
                  ),
                ),

                /// Profile Icon
                Positioned(
                  right: 0,
                  left: 300,
                  bottom: 88,
                  child: CircleAvatar(
                    radius: 17,
                    backgroundColor: Colors.white,
                    child: UiHelper.CustomImage(img: 'user.png'),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),

            /// Body Section
            UiHelper.CustomImage(img: 'shopping-cart.png'),
            const SizedBox(
              height: 15,
            ),
            UiHelper.CustomText(
                text: 'Reordering will be easy',
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontsize: 16,
                fontfamily: 'bold'),
            const SizedBox(
              height: 5,
            ),
            UiHelper.CustomText(
                text: 'Items you order will show up here so you can buy',
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontsize: 10),
            UiHelper.CustomText(
                text: 'them again easily.',
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontsize: 10),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  UiHelper.CustomText(
                      text: 'Bestsellers',
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontsize: 16,
                      fontfamily: 'bold'),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            /// Row Image Section
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Stack(
                    children: [
                      UiHelper.CustomImage(img: 'milk.png'),
                      Padding(
                        padding: const EdgeInsets.only(top: 95, left: 65),
                        child: UiHelper.CustomButton(callback: () {}),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Stack(
                    children: [
                      UiHelper.CustomImage(img: 'poteto.png'),
                      Padding(
                        padding: const EdgeInsets.only(top: 95, left: 65),
                        child: UiHelper.CustomButton(callback: () {}),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Stack(
                    children: [
                      UiHelper.CustomImage(img: 'tometo.png'),
                      Padding(
                        padding: const EdgeInsets.only(top: 95, left: 65),
                        child: UiHelper.CustomButton(callback: () {}),
                      )
                    ],
                  ),
                ],
              ),
            ),

            /// Row Text's
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 8),
              child: Row(
                children: [
                  UiHelper.CustomText(
                      text: 'Amul Taaza Toned \nFresh Milk',
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontsize: 8),
                  const SizedBox(
                    width: 40,
                  ),
                  UiHelper.CustomText(
                      text: 'Potato (Aloo)',
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontsize: 8),
                  const SizedBox(
                    width: 41,
                  ),
                  UiHelper.CustomText(
                      text: 'Hybrid Tomato',
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontsize: 8),
                ],
              ),
            ),

            /// Icons & Timer
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 5),
              child: Row(
                children: [
                  UiHelper.CustomImage(img: 'timer.png'),
                  const SizedBox(
                    width: 2,
                  ),
                  UiHelper.CustomText(
                      text: '16 MINS',
                      color: AppColors.textgraycolor,
                      fontWeight: FontWeight.w400,
                      fontsize: 10),
                  const SizedBox(
                    width: 58,
                  ),
                  UiHelper.CustomImage(img: 'timer.png'),
                  const SizedBox(
                    width: 2,
                  ),
                  UiHelper.CustomText(
                      text: '16 MINS',
                      color: AppColors.textgraycolor,
                      fontWeight: FontWeight.w400,
                      fontsize: 10),
                  const SizedBox(
                    width: 50,
                  ),
                  UiHelper.CustomImage(img: 'timer.png'),
                  const SizedBox(
                    width: 2,
                  ),
                  UiHelper.CustomText(
                      text: '16 MINS',
                      color: AppColors.textgraycolor,
                      fontWeight: FontWeight.w400,
                      fontsize: 10),
                ],
              ),
            ),

            /// Rupess Section
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 5),
              child: Row(
                children: [
                  UiHelper.CustomImage(img: 'ruppes.png'),
                  const SizedBox(
                    width: 3,
                  ),
                  UiHelper.CustomText(
                      text: '27',
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontsize: 15,
                      fontfamily: 'bold'),
                  const SizedBox(
                    width: 80,
                  ),
                  UiHelper.CustomImage(img: 'ruppes.png'),
                  const SizedBox(
                    width: 3,
                  ),
                  UiHelper.CustomText(
                      text: '37',
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontsize: 15,
                      fontfamily: 'bold'),
                  const SizedBox(
                    width: 66,
                  ),
                  UiHelper.CustomImage(img: 'ruppes.png'),
                  const SizedBox(
                    width: 3,
                  ),
                  UiHelper.CustomText(
                      text: '37',
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontsize: 15,
                      fontfamily: 'bold'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
