import 'package:blinkit_app/domain/constants/app_colors.dart';
import 'package:blinkit_app/repositry/widgets/ui_helper.dart';
import 'package:flutter/material.dart';

class PrintScreen extends StatelessWidget {
  TextEditingController SearchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFBF0CE),
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
                        UiHelper.CustomTextField(controller: SearchController)
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

              /// Body Section
              const SizedBox(
                height: 30,
              ),
              UiHelper.CustomText(
                  text: 'Print Store',
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontsize: 32,
                  fontfamily: 'bold'),
              const SizedBox(
                height: 10,
              ),
              UiHelper.CustomText(
                  text: 'Blinkit ensures secure prints at every stage',
                  color: AppColors.textgraycolor,
                  fontWeight: FontWeight.w700,
                  fontsize: 14,
                  fontfamily: 'bold'),
              const SizedBox(
                height: 50,
              ),

              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),

                    /// Container Section
                    child: Container(
                      height: 163,
                      width: 361,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 16,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 13),
                            child: Row(
                              children: [
                                UiHelper.CustomText(
                                    text: 'Documents',
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontsize: 14,
                                    fontfamily: 'bold')
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 13),
                            child: Row(
                              children: [
                                UiHelper.CustomImage(img: 'star.png'),
                                const SizedBox(
                                  width: 10,
                                ),
                                UiHelper.CustomText(
                                    text: 'Price starting at rs 3/page',
                                    color: AppColors.textgraycolor,
                                    fontWeight: FontWeight.w400,
                                    fontsize: 14)
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 13),
                            child: Row(
                              children: [
                                UiHelper.CustomImage(img: 'star.png'),
                                const SizedBox(
                                  width: 10,
                                ),
                                UiHelper.CustomText(
                                    text: 'Paper quality: 70 GSM',
                                    color: AppColors.textgraycolor,
                                    fontWeight: FontWeight.w400,
                                    fontsize: 14)
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 13),
                            child: Row(
                              children: [
                                UiHelper.CustomImage(img: 'star.png'),
                                const SizedBox(
                                  width: 10,
                                ),
                                UiHelper.CustomText(
                                    text: 'Single side prints',
                                    color: AppColors.textgraycolor,
                                    fontWeight: FontWeight.w400,
                                    fontsize: 14)
                              ],
                            ),
                          ),

                          /// Button Section
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 10),
                            child: Row(
                              children: [
                                MaterialButton(
                                  onPressed: () {},
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      side: BorderSide(
                                          color: Colors.transparent)),
                                  height: 40,
                                  minWidth: 125,
                                  color: AppColors.btngreencolor,
                                  child: UiHelper.CustomText(
                                      text: 'Upload Files',
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontsize: 13,
                                      fontfamily: 'bold'),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 50,
                      right: 20,
                      child: UiHelper.CustomImage(img: 'file.png')),
                  /// Always Set Image With Padding & Positioned
                  /// Padding(padding: EdgeInsets.only(left: 248,top: 43,bottom: 30,right: 23),child: UiHelper.CustomImage(img: 'file.png'),),
                ],
              ),
            ],
          ),
        ));
  }
}
