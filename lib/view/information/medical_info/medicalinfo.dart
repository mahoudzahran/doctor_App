import 'package:doctor/componant/widgets/custom_drop/custom_dropdown.dart';
import 'package:doctor/componant/widgets/custom_medical/custom_medical.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../componant/widgets/constant/color.dart';
import '../../../componant/widgets/constant/strings.dart';
import '../../../componant/widgets/custom_text/custom_text.dart';

class MedicalInfo extends StatelessWidget {
  const MedicalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Center(
          child: CustomText(
              text: AppStringsEn.medicalInfo,
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
                CustomMedical(
                    text: AppStringsEn.diagnose,
                    iconData: const Icon(
                      Icons.add_circle,
                      color: Colors.green,
                      size: 40,
                    ),
                    function: () {}),
                const SizedBox(
                  height: 30,
                ),
                CustomMedical(
                    text: AppStringsEn.previous,
                    iconData: const Icon(
                      Icons.add_circle,
                      color: Colors.green,
                      size: 40,
                    ),
                    function: () {}),
                const SizedBox(
                  height: 30,
                ),
                CustomMedical(
                    text: AppStringsEn.medications,
                    iconData: const Icon(
                      Icons.add_circle,
                      color: Colors.green,
                      size: 40,
                    ),
                    function: () {}),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadiusDirectional.circular(10.0),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: CustomText(
                            text: AppStringsEn.video,
                            size: 18,
                            color: Colors.grey.shade700,
                            colorShadow: secondColor),
                      ),
                      const Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.file_upload_outlined)),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.video_camera_back_outlined)),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadiusDirectional.circular(10.0),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: CustomText(
                            text: AppStringsEn.video,
                            size: 18,
                            color: Colors.grey.shade700,
                            colorShadow: secondColor),
                      ),
                      const Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.file_upload_outlined)),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.multitrack_audio)),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal
                  ),
                  onPressed: () {},
                  child: const CustomText(
                      text: AppStringsEn.sign,
                      size: 18,
                      color: whiteColor,
                      colorShadow: whiteColor),

                )

              ],
            )),
      ),
    );
  }
}
