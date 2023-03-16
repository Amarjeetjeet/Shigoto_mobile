import 'package:flutter/material.dart';
import 'package:shigoto/core/constants/app_style.dart';
import 'package:shigoto/core/constants/color_constants.dart';
import 'package:shigoto/core/constants/image_constants.dart';
import 'package:shigoto/router/app_router.dart';

import '../job_card/job_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildSizedBox(10),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Hello\nOrlando Diggs.",
                    style: AppStyle.txtDmSans22W700primaryTextColor,
                  )),
              buildSizedBox(38),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 145,
                    decoration: BoxDecoration(
                        color: ColorConstants.primaryColor,
                        borderRadius: BorderRadius.circular(6)),
                  ),
                  Positioned(
                      bottom: 0,
                      right: 20,
                      child: Image.asset(
                        ImageConstants.girlImage,
                        height: 193,
                      )),
                  Positioned(
                      top: 24,
                      left: 17,
                      child: Text(
                        "50% off\ntake any courses",
                        style: AppStyle.txtDmSans18W400primaryTextColor,
                      )),
                  Positioned(
                      bottom: 25,
                      left: 17,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Join Now",
                          style: AppStyle.txtDmSans13W500primaryTextColor,
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: ColorConstants.secondaryColor),
                      )),
                ],
              ),
              buildSizedBox(24),
              Text(
                "Find Your Job",
                style: AppStyle.txtDmSans16W700blackColor,
              ),
              buildSizedBox(31),
              Row(
                children: [
                  Stack(
                    children: [
                      Container(
                          width: 150,
                          height: 170,
                          decoration: BoxDecoration(
                              color: ColorConstants.skyBlueColor,
                              borderRadius: BorderRadius.circular(6))),
                      Positioned(
                        top: 0,
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              ImageConstants.remoteJob,
                              height: 34,
                            ),
                            buildSizedBox(14),
                            Text(
                              "44.5k",
                              style: AppStyle.txtDmSans14W700primaryTextColor,
                            ),
                            buildSizedBox(6),
                            Text(
                              "Remote Job",
                              style: AppStyle.txtDmSans14W400primaryTextColor,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                                height: 75,
                                decoration: BoxDecoration(
                                    color: ColorConstants.beaffeColor,
                                    borderRadius: BorderRadius.circular(6))),
                            Positioned(
                              top: 0,
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  buildSizedBox(14),
                                  Text(
                                    "66.8k",
                                    style:
                                        AppStyle.txtDmSans14W700primaryTextColor,
                                  ),
                                  buildSizedBox(5),
                                  Text(
                                    "Full Time",
                                    style:
                                        AppStyle.txtDmSans14W400primaryTextColor,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        buildSizedBox(20),
                        Stack(
                          children: [
                            Container(
                                height: 75,
                                decoration: BoxDecoration(
                                    color: ColorConstants.ffd6adColor,
                                    borderRadius: BorderRadius.circular(6))),
                            Positioned(
                              top: 0,
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  buildSizedBox(14),
                                  Text(
                                    "38.9k",
                                    style:
                                        AppStyle.txtDmSans14W700primaryTextColor,
                                  ),
                                  buildSizedBox(5),
                                  Text(
                                    "Part Time",
                                    style:
                                        AppStyle.txtDmSans14W400primaryTextColor,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              buildSizedBox(19),
              Text(
                "Recent Job List",
                style: AppStyle.txtDmSans16W700blackColor,
              ),
              const JobCard()
            ],
          ),
        ),
      ),
    );
  }


  SizedBox buildSizedBox(double height) {
    return SizedBox(
      height: height,
    );
  }
}
