import 'package:doctor/componant/widgets/constant/color.dart';
import 'package:doctor/componant/widgets/constant/strings.dart';
import 'package:doctor/componant/widgets/custom_text/custom_text.dart';
import 'package:doctor/view/Home/home.dart';
import 'package:doctor/view/setting/setting.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../componant/widgets/customappbar/customappbar.dart';
import '../../componant/widgets/customcontainer/customcontainer_home.dart';

class HomeScreenMain extends StatelessWidget {
  const HomeScreenMain({super.key});

  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 260,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomPaint(
                      painter: HeaderCurvedContainer(),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                      ),
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Row(
                            children: [
                              Text(
                                'Home',
                                style: TextStyle(
                                  fontSize: 35.0,
                                  letterSpacing: 1.5,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,

                                ),
                              ),
                              Spacer(),
                              CircleAvatar(
                                radius: 60.0,
                                backgroundImage: AssetImage('assets/images/umb.jpg'),
                              )
                            ],
                          ),
                        ),

                      ],
                    ),
                    Positioned(top: 130,child:   CircleAvatar(
                      radius: 64,
                      backgroundColor:
                      Theme.of(context).scaffoldBackgroundColor,
                      child: const CircleAvatar(
                        radius: 60.0,
                        backgroundImage: AssetImage('assets/images/doctor.jpg'),
                      ),
                    ),
                    )
                  ],

                ),
              ),
              const Row(
                children: [
                  CustomerContainerHome(text: AppStringsEn.dash,  image: 'assets/images/performance.png'),
                  SizedBox(width:10,),
                  CustomerContainerHome(text: AppStringsEn.clinical,  image: 'assets/images/risk.png')

                ],
              ),
              const Row(
                children: [
                  CustomerContainerHome(text: AppStringsEn.ovr,  image: 'assets/images/risk.png'),
                  SizedBox(width:10,),
                  CustomerContainerHome(text: AppStringsEn.staff,  image: 'assets/images/users.png')

                ],
              ),
              const Row(
                children: [
                  CustomerContainerHome(text: AppStringsEn.pcr,  image: 'assets/images/users.png'),
                  SizedBox(width:10,),
                  CustomerContainerHome(text: AppStringsEn.kpis,  image: 'assets/images/kpi.png')

                ],
              )


            ],
          ),
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

      ),

    );
  }
}

