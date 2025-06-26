import 'package:blinkit_app/domain/constants/app_colors.dart';
import 'package:blinkit_app/repositry/widgets/ui_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {

  /// Controller
  TextEditingController SearchController = TextEditingController();

  /// Mega Diwali Array Images
  var megadiwalisale = [
    {'img': 'image 50.png', 'text': 'Lights, Diyas \n& Candles'},
    {'img': 'image 51.png', 'text': 'Diwali \nGifts'},
    {'img': 'image 52.png', 'text': 'Appliances \n& Gadgets'},
    {'img': 'image 53.png', 'text': 'Home \n& Living'},
  ];

  /// Array of Grocery & Kitchen Images
  var groceryKichen = [
    {'img': 'image 41.png', 'text': 'Vegetables & \nFruits'},
    {'img': 'image 42.png', 'text': 'Atta, Dal & \nRice'},
    {'img': 'image 43.png', 'text': 'Oil, Ghee & \nMasala'},
    {'img': 'image 44 (1).png', 'text': 'Dairy, Bread & \nMilk'},
    {'img': 'image 45 (1).png', 'text': 'Biscuits & \nBakery'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
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
                    const BoxDecoration(color: AppColors.appbarredcolor),
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
                                  color: Colors.white,
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
                                  color: Colors.white,
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
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontsize: 12,
                                  fontfamily: 'bold'),
                              UiHelper.CustomText(
                                  text: 'Yash Vadecha, Junagadh, Gujarat (GJ)',
                                  color: Colors.white,
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
                      backgroundColor: Colors.black,
                      child: UiHelper.CustomImage(img: 'person_white.png'),
                    ),
                  ),
                ],
              ),

              /// Lines
              Container(
                color: Colors.white,
                width: double.infinity,
                height: 1,
              ),

              /// Mega Diwali Sale Box
              Container(
                height: 196,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: AppColors.appbarredcolor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        UiHelper.CustomImage(img: 'image 60.png'),
                        UiHelper.CustomText(
                          text: 'Mega Diwali Sale',
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontsize: 20,
                        ),
                        UiHelper.CustomImage(img: 'image 55.png'),
                      ],
                    ),

                    /// Display Mega Diwali Sale Items
                    SizedBox(
                      height: 120, // fixed height to avoid overflow
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: megadiwalisale.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: 108,
                                  width: 86,
                                  decoration: BoxDecoration(
                                    color: Color(0xffEAD3D3),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10), // 10px above text
                                        child: UiHelper.CustomText(
                                          text: megadiwalisale[index]['text'].toString(),
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontsize: 10,
                                          fontfamily: 'bold',
                                        ),
                                      ),
                                      Expanded(
                                        child: Align(
                                          alignment: Alignment.bottomCenter,
                                          child: UiHelper.CustomImage(
                                            img: megadiwalisale[index]['img'].toString(),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );

                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20,),

              /// Row Image Section
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        UiHelper.CustomImage(img: 'image 54.png'),
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
                        UiHelper.CustomImage(img: 'image 57.png'),
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
                        UiHelper.CustomImage(img: 'image 63.png'),
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
                padding: const EdgeInsets.only(left: 5, top: 8),
                child: Row(
                  children: [
                    UiHelper.CustomText(
                        text: 'Golden Glass \nWooden Lid Candle (Oudh)',
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontsize: 8),
                    const SizedBox(
                      width: 2,
                    ),
                    UiHelper.CustomText(
                        text: 'Royal Gulab Jamun \nBy Bikano',
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontsize: 8),
                    const SizedBox(
                      width: 15,
                    ),
                    UiHelper.CustomText(
                        text: 'Bikaji Bhujia',
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
                        text: '79',
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
                        text: '79',
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
                        text: '79',
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontsize: 15,
                        fontfamily: 'bold'),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 15, top: 25),
                child: Row(
                  children: [
                    UiHelper.CustomText(
                        text: 'Grocery & Kitchen',
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontsize: 14,
                        fontfamily: 'bold')
                  ],
                ),
              ),
              const SizedBox(
                height: 7,
              ),

              /// Grocery & Kitchen Items Display
              SizedBox(
                height: 120,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 7, right: 10),
                            child: Container(
                              height: 78,
                              width: 71,
                              decoration: BoxDecoration(
                                  color: AppColors.containercolor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: UiHelper.CustomImage(
                                  img: groceryKichen[index]['img'].toString()),
                            ),
                          ),
                          UiHelper.CustomText(
                              text: groceryKichen[index]['text'].toString(),
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontsize: 10)
                        ],
                      );
                    },
                    itemCount: groceryKichen.length,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
