import 'package:doctor/componant/widgets/constant/color.dart';
import 'package:doctor/componant/widgets/constant/strings.dart';
import 'package:doctor/componant/widgets/custom_text/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Home/home.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90.0,
        backgroundColor: primaryColor,
        title: const CustomText(
            text: AppStringsEn.setting,
            size: 30,
            color: whiteColor,
            colorShadow: whiteColor),
        leading: Row(
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  size: 20,
                  color: whiteColor,
                )),
            const CustomText(
                text: 'Back',
                size: 20,
                color: whiteColor,
                colorShadow: whiteColor)
          ],
        ),
        leadingWidth: 150,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.only(
                bottomStart: Radius.circular(30.0),
                bottomEnd: Radius.circular(30.0))),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20.0, top: 70),
        child: (Column(
          children: [
            Row(
              children: [
                const CustomText(
                    text: AppStringsEn.dark,
                    size: 25,
                    color: secondColor,
                    colorShadow: secondColor),
                const Spacer(),
                CupertinoSwitch(value: true, onChanged: (value) {})
                //CupertinoSwitch
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                const CustomText(
                    text: AppStringsEn.language,
                    alignment: Alignment.topRight,
                    size: 25,
                    color: secondColor,
                    colorShadow: secondColor),
                const SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Container(
                      width: 250,
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all()),
                      child: const Column(
                        children: [
                          CustomText(
                              text: AppStringsEn.eng,
                              size: 18,
                              color: secondColor,
                              colorShadow: secondColor),
                          Divider(
                            color: secondColor,
                          ),
                          CustomText(
                              text: AppStringsEn.ar,
                              size: 18,
                              color: secondColor,
                              colorShadow: secondColor),
                        ],
                      ),
                    ),
                  ),
                ),
                //CupertinoSwitch
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadiusDirectional.circular(10.0),
                    border: Border.all(
                      color: primaryColor,
                    )),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.person,
                          size: 40,
                          color: whiteColor,
                        )),
                    const Padding(
                      padding: EdgeInsets.only(left: 30.0),
                      child: CustomText(
                          text: AppStringsEn.profile,
                          size: 25,
                          color: whiteColor,
                          colorShadow: whiteColor),
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 40,
                          color: whiteColor,
                        ))
                  ],
                ),
              ),
            )
          ],
        )),
      ),
      bottomNavigationBar: Container(
        height: 100,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30)),
            boxShadow: [
              BoxShadow(color: primaryColor, spreadRadius: 0, blurRadius: 10),
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            child: BottomNavigationBar(
              backgroundColor: primaryColor,
              selectedItemColor: whiteColor,
              unselectedItemColor: whiteColor,
              items: [
                BottomNavigationBarItem(icon: IconButton(icon: Icon(Icons.home,),onPressed: (){Get.to(HomeScreen(),transition: Transition.upToDown,duration: Duration(seconds: 1));},),label: 'Home'),
                BottomNavigationBarItem(icon: IconButton(icon: Icon(Icons.settings,),onPressed: (){Get.to(SettingScreen(),transition: Transition.upToDown,duration: Duration(seconds: 1));},),label: 'Settings'),


              ],
            ),
          )),
    );
  }
}
