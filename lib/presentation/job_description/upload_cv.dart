import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shigoto/core/constants/app_style.dart';
import 'package:shigoto/core/constants/color_constants.dart';
import 'package:shigoto/core/custom_widgets/buttons/custom_primary_Btn.dart';
import 'package:shigoto/presentation/job_description/widgets/company_logo_designations.dart';
import 'package:shigoto/presentation/job_description/widgets/heading_details.dart';
import 'package:shigoto/presentation/job_description/widgets/heading_title.dart';
import 'package:shigoto/router/app_router.dart';

class UploadCv extends StatelessWidget{
  const UploadCv({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SafeArea(child: Padding(
        padding: const EdgeInsets.all(29.0),
        child: PrimaryCustomButton(btnName: 'Apply Now', onTap: () {
          Navigator.pushNamed(context, AppRouter.successfulScreen);
        },),
      )),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            CompanyLogoDetails(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  HeadingTitle(title: "Upload CV"),
                  SizedBox(
                    height: 11,
                  ),
                  HeadingDetails(info: "Add your CV/Resume to apply for a job"),
                  SizedBox(
                    height: 20,
                  ),

                  DottedBorder(
                    color: ColorConstants.c9d97b5Color,
                    strokeWidth: 1,
                    padding: EdgeInsets.all(6),
                    borderType: BorderType.RRect,
                    radius: Radius.circular(15),
                    dashPattern: [5, 3, 2, 3],
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.drive_folder_upload ,color: ColorConstants.secondaryTextColor,size: 37,),
                          SizedBox(
                            width: 20,
                          ),
                          Text("Upload CV/Resume" ,style: AppStyle.txtDmSans14W400primaryTextColor,)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  HeadingTitle(title: "Information"),
                  SizedBox(
                    height: 16,
                  ),

                  TextFormField(
                    maxLines: 10,
                    decoration: InputDecoration(
                      hintText: "Explain why you are the right person for this job",
                      hintStyle: AppStyle.txtDmSans12W400AAA6B9TextColor
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}