import 'package:doctor/componant/widgets/constant/color.dart';
import 'package:doctor/componant/widgets/constant/strings.dart';
import 'package:doctor/componant/widgets/custom_text/custom_text.dart';
import 'package:doctor/componant/widgets/customtextformfield/custom_textformfield.dart';
import 'package:doctor/view/information/workinfo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({super.key});

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  bool checkedValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //toolbarHeight: 50.0,
        backgroundColor: primaryColor,
        title: const Center(
          child: CustomText(
              text: AppStringsEn.personalInfo,
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
              CustomTextFormFeild(AppStringsEn.fullName, () {}, () {},
                  width: double.infinity),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                      child: CustomTextFormFeild(AppStringsEn.id, () {}, () {},
                          width: 150)),
                  const SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: CustomTextFormFeild(
                        AppStringsEn.passport, () {}, () {},
                        width: 150),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormFeild(
                        AppStringsEn.gender, () {}, () {},
                        width: 100),
                  ),
                  Row(
                    children: [
                      Checkbox(
                          value: checkedValue,
                          activeColor: Colors.green,
                          shape: const CircleBorder(),
                          onChanged: (newValue) {
                            setState(() {
                              checkedValue = newValue!;
                            });
                          }),
                      Image.asset(
                        'assets/images/famele.png',
                        width: 15,
                        height: 25,
                        color: Colors.pink,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const CustomText(
                          text: 'famele',
                          size: 18,
                          color: primaryColor,
                          colorShadow: primaryColor)
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                          value: checkedValue,
                          activeColor: Colors.green,
                          shape: const CircleBorder(),
                          onChanged: (newValue) {
                            setState(() {
                              checkedValue = newValue!;
                            });
                          }),
                      Image.asset(
                        'assets/images/male.png',
                        width: 25,
                        height: 25,
                        color: primaryColor,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const CustomText(
                          text: 'male',
                          size: 18,
                          color: primaryColor,
                          colorShadow: primaryColor)
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              CustomTextFormFeild(AppStringsEn.date, () {}, () {},
                  width: double.infinity),
              const SizedBox(
                height: 20.0,
              ),
              CustomTextFormFeild(AppStringsEn.address, () {}, () {},
                  width: double.infinity),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: CustomTextFormFeild(
                          AppStringsEn.city, () {}, () {},
                          width: 90)),
                  const SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade50,
                        borderRadius: BorderRadiusDirectional.circular(10.0),
                      ),
                      child: DropdownButtonFormField<String>(
                        iconSize: 30,
                        iconEnabledColor: primaryColor,
                        icon: const Icon(
                          Icons.keyboard_arrow_down,
                        ),
                        decoration: const InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          border:
                              UnderlineInputBorder(borderSide: BorderSide.none),
                        ),
                        items: const [
                          DropdownMenuItem(
                            child: Padding(
                              padding: EdgeInsets.only(left: 40.0),
                              child: CustomText(
                                  text: AppStringsEn.selectCity,
                                  size: 14,
                                  color: primaryColor,
                                  colorShadow: primaryColor),
                            ),
                          )
                        ],
                        onChanged: (String? value) {},
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: CustomTextFormFeild(
                          AppStringsEn.region, () {}, () {},
                          width: 90)),
                  const SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade50,
                        borderRadius: BorderRadiusDirectional.circular(10.0),
                      ),
                      child: DropdownButtonFormField<String>(
                        iconSize: 30,
                        iconEnabledColor: primaryColor,
                        icon: const Icon(
                          Icons.keyboard_arrow_down,
                        ),
                        decoration: const InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          border:
                              UnderlineInputBorder(borderSide: BorderSide.none),
                        ),
                        items: const [
                          DropdownMenuItem(
                            child: Padding(
                              padding: EdgeInsets.only(left: 40.0),
                              child: CustomText(
                                  text: AppStringsEn.selectRegion,
                                  size: 14,
                                  color: primaryColor,
                                  colorShadow: primaryColor),
                            ),
                          )
                        ],
                        onChanged: (String? value) {},
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: CustomTextFormFeild(
                          AppStringsEn.mobile, () {}, () {},
                          width: 100)),
                  const SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    flex: 2,
                    child: CustomTextFormFeild('+20', () {}, () {}, width: 220),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              CustomTextFormFeild(AppStringsEn.email, () {}, () {},
                  width: double.infinity),
              const SizedBox(
                height: 20.0,
              ),
              CustomTextFormFeild(AppStringsEn.password, () {}, () {},
                  width: double.infinity),
              const SizedBox(
                height: 20.0,
              ),
              CustomTextFormFeild(AppStringsEn.confirmPassword, () {}, () {},
                  width: double.infinity),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MaterialButton(
                    onPressed: () {
                      Get.to(WorkInfo(),transition: Transition.rightToLeft);
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
                            SizedBox(width: 5,),
                            Icon(
                                Icons.keyboard_arrow_right_outlined,
                              color: whiteColor,
                              size: 40,

                            )
                          ],
                        )),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
