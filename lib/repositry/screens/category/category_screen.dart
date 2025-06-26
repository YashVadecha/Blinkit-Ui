import 'package:blinkit_app/domain/constants/app_colors.dart';
import 'package:blinkit_app/repositry/widgets/ui_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CategoryScreen extends StatelessWidget {
  /// Controller
  TextEditingController SearchController = TextEditingController();

  /// Array of Grocery & Kitchen Images
  var groceryKichen = [
    {'img': 'image 41.png', 'text': 'Vegetables & \nFruits'},
    {'img': 'image 42.png', 'text': 'Atta, Dal & \nRice'},
    {'img': 'image 43.png', 'text': 'Oil, Ghee & \nMasala'},
    {'img': 'image 44 (1).png', 'text': 'Dairy, Bread & \nMilk'},
    {'img': 'image 45 (1).png', 'text': 'Biscuits & \nBakery'},
  ];

  /// Second Array of Grocery & Kitchen Images
  var secondgroceryKichen = [
    {'img': 'image 21.png', 'text': 'Dry Fruits & \nCereals'},
    {'img': 'image 22.png', 'text': 'Kitchen & \nAppliances'},
    {'img': 'image 23.png', 'text': 'Tea & \nCoffees'},
    {'img': 'image 24.png', 'text': 'Ice Creams & \nmuch more'},
    {'img': 'image 25.png', 'text': 'Noodles & \nPacket Food'},
  ];

  /// Array of Snack & Drinks Images
  var snaksanddrinks = [
    {'img': 'image 31.png', 'text': 'Chips & \nNamkeens'},
    {'img': 'image 32.png', 'text': 'Sweets & \nChocalates'},
    {'img': 'image 33.png', 'text': 'Drinks & \nJuices'},
    {'img': 'image 34.png', 'text': 'Sauces & \nSpreads'},
    {'img': 'image 35.png', 'text': 'Beauty & \nCosmetics'},
  ];

  /// Array of Household & Essential Images
  var householdandessential = [
    {'img': 'image 36.png', 'text': 'Sur Excel & \nPowders'},
    {'img': 'image 37.png', 'text': 'Soap & \nBody Washes'},
    {'img': 'image 38.png', 'text': 'Spree & \nBody Spree'},
    {'img': 'image 39.png', 'text': 'Soffa & \nPillows'},
    {'img': 'image 40.png', 'text': 'Shampoo & \nHair Oil'},
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
            const SizedBox(height: 10,),

            /// Second Row of Grocery & Kitchen Items
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
                                img:
                                    secondgroceryKichen[index]['img'].toString()),
                          ),
                        ),
                        UiHelper.CustomText(
                            text: secondgroceryKichen[index]['text'].toString(),
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontsize: 10)
                      ],
                    );
                  },
                  itemCount: secondgroceryKichen.length,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),

            SizedBox(height: 20,),
            /// Snacks & Drinks
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  UiHelper.CustomText(
                      text: 'Snacks & Drinks',
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontsize: 14,
                      fontfamily: 'bold')
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            /// Third Array Snacks & Drinks Items
            SizedBox(
              height: 120,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListView.builder(itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 7,right: 10),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                            color: AppColors.containercolor,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: UiHelper.CustomImage(img: snaksanddrinks[index]['img'].toString()),
                        ),
                      ),
                      UiHelper.CustomText(text: snaksanddrinks[index]['text'].toString(), color: Colors.black, fontWeight: FontWeight.w400, fontsize: 10)
                    ],
                  );
                },itemCount: snaksanddrinks.length,scrollDirection: Axis.horizontal,),
              ),
            ),

            SizedBox(height: 10,),
            /// Household Essentials
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  UiHelper.CustomText(text: 'Household Essentials', color: Colors.black, fontWeight: FontWeight.w700, fontsize: 14,fontfamily: 'bold')
                ],
              ),
            ),

            SizedBox(height: 12,),
            SizedBox(
              height: 120,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListView.builder(itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 7,right: 10),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                              color: AppColors.containercolor,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: UiHelper.CustomImage(img: householdandessential[index]['img'].toString()),
                        ),
                      ),
                      UiHelper.CustomText(text: householdandessential[index]['text'].toString(), color: Colors.black, fontWeight: FontWeight.w400, fontsize: 10)
                    ],
                  );
                },itemCount: householdandessential.length,scrollDirection: Axis.horizontal,),
              ),
            ),

          ],
        ),
      ),
    ));
  }
}
