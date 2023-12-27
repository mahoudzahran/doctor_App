import 'package:doctor/componant/widgets/custom_drop/custom_dropdown.dart';
import 'package:doctor/view/information/medical_info/medicalinfo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../componant/widgets/constant/color.dart';
import '../../componant/widgets/constant/strings.dart';
import '../../componant/widgets/custom_text/custom_text.dart';
import '../../componant/widgets/customtextformfield/custom_textformfield.dart';

class WorkInfo extends StatelessWidget {
  const WorkInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Center(
          child: CustomText(
              text: AppStringsEn.workInfo,
              size: 30,
              color: whiteColor,
              colorShadow: whiteColor),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.chevron_left_rounded,
              color: whiteColor,
              size: 45,
            )),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.only(
                bottomStart: Radius.circular(30.0),
                bottomEnd: Radius.circular(30.0))),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 15, right: 15),
          child: Column(
            children: [
              CustomDrop(
                  text: AppStringsEn.spec,
                  text2: AppStringsEn.selectSpec,
                  function: (value) {}),
              const SizedBox(
                height: 20.0,
              ),
              CustomDrop(
                  text: AppStringsEn.sub,
                  text2: AppStringsEn.selectSub,
                  function: (value) {}),
              const SizedBox(
                height: 20.0,
              ),
              CustomDrop(
                  text: AppStringsEn.sin,
                  text2: AppStringsEn.selectSin,
                  function: (value) {}),
              const SizedBox(
                height: 20.0,
              ),
              CustomTextFormFeild(AppStringsEn.clinicName, () {}, () {},
                  width: double.infinity),
              const SizedBox(
                height: 20.0,
              ),
              CustomTextFormFeild(AppStringsEn.clinicAddress, () {}, () {},
                  width: double.infinity),
              const SizedBox(
                height: 20.0,
              ),
              CustomTextFormFeild(AppStringsEn.clinicPhone, () {}, () {},
                  width: double.infinity),
              const SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add_circle,
                        color: Colors.green,
                      )),
                  const CustomText(
                      text: AppStringsEn.add,
                      size: 18,
                      color: secondColor,
                      colorShadow: secondColor)
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  const CustomText(
                      text: AppStringsEn.upload,
                      size: 18,
                      color: primaryColor,
                      colorShadow: primaryColor),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.file_upload_outlined),
                  ),
                  const Spacer(),
                  const CustomText(
                      text: AppStringsEn.uploadPhoto,
                      size: 18,
                      color: secondColor,
                      colorShadow: primaryColor),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  const Expanded(
                    flex: 2,
                    child: CustomText(
                        text: AppStringsEn.uploadLic,
                        size: 18,
                        color: primaryColor,
                        colorShadow: primaryColor),
                  ),
                  Expanded(
                      flex: 1,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.file_upload_outlined),
                      )),
                  const Expanded(
                    flex: 2,
                    child: CustomText(
                        text: AppStringsEn.uploadPhoto,
                        size: 18,
                        color: secondColor,
                        colorShadow: primaryColor),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MaterialButton(
                    onPressed: () {
                      Get.to(const MedicalInfo(),transition: Transition.rightToLeft);
                    },
                    child: Container(
                        width: 160,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            color: primaryColor),
                        child: const Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 40.0),
                              child: CustomText(
                                text: AppStringsEn.next,
                                size: 25,
                                color: whiteColor,
                                alignment: Alignment.centerLeft,
                                colorShadow: primaryColor,
                              ),
                            ),
                            Spacer(),
                            Icon(
                                Icons.keyboard_arrow_right_outlined,
                                color: whiteColor,
                                size: 30,
                            )
                          ],
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
