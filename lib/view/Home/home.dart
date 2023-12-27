import 'package:doctor/componant/widgets/constant/color.dart';
import 'package:doctor/componant/widgets/constant/strings.dart';
import 'package:doctor/componant/widgets/custom_text/custom_text.dart';
import 'package:doctor/componant/widgets/customcontainer/customcontainer.dart';
import 'package:doctor/view/information/medical_info/medicalinfo.dart';
import 'package:doctor/view/information/workinfo.dart';
import 'package:doctor/view/setting/setting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../information/personlinfo.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Column(
                  children: [
                    IconButton(onPressed: (){
                      Get.to(const SettingScreen(),transition: Transition.downToUp,duration: Duration(seconds: 1));
                    }, icon: const Icon(Icons.settings,size: 30,)),
                    const CustomText(
                        text: AppStringsEn.language,
                        alignment: Alignment.topRight,
                        size: 18,
                        color: secondColor,
                        colorShadow: secondColor),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Container(
                            width: 110,
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
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80.0),
                child: Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    CircleAvatar(
                      radius: 64,
                      backgroundColor:
                          Theme.of(context).scaffoldBackgroundColor,
                      child: const CircleAvatar(
                        radius: 60.0,
                        backgroundImage: AssetImage('assets/images/doctor.jpg'),
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.camera_alt,
                          size: 30,
                          color: Colors.teal,
                        ))
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                CustomContainer(
                    text: AppStringsEn.personalInfo,
                    size: 25,
                    color: whiteColor,
                    function: () {
                       Get.to( const PersonalInfo(),transition:Transition.downToUp,duration: const Duration(seconds: 1) );
                    }

                    ),
                const SizedBox(
                  height: 40,
                ),
                CustomContainer(
                    text: AppStringsEn.workInfo,
                    size: 25,
                    color: whiteColor,
                    function: () {
                      Get.to( const WorkInfo(),transition:Transition.downToUp,duration: const Duration(seconds: 1) );

                    }),
                const SizedBox(
                  height: 40,
                ),
                CustomContainer(
                    text: AppStringsEn.medicalInfo,
                    size: 25,
                    color: whiteColor,
                    function: () {
                      Get.to( const MedicalInfo(),transition:Transition.downToUp,duration: const Duration(seconds: 1) );

                    }),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
