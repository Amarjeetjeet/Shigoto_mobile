import 'package:flutter/material.dart';
import 'package:shigoto/core/constants/app_style.dart';
import 'package:shigoto/core/constants/color_constants.dart';
import 'package:shigoto/core/constants/image_constants.dart';
import 'package:shigoto/core/custom_widgets/buttons/custom_primary_Btn.dart';
import 'package:shigoto/core/custom_widgets/buttons/custom_secondary_color.dart';

class JobDescriptionScreen extends StatelessWidget {
  const JobDescriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 53.0 ,right: 53.0 , bottom: 28),
            child: PrimaryCustomButton(
        btnName: 'Apply Now',
        onTap: () {},
      ),
          )),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 80,
              ),
              Container(
                color: ColorConstants.f3f2f2Color,
                height: 124,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: -50,
                      left: 0,
                      right: 0,
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: ColorConstants.skyBlueColor,
                        child:
                            Image.asset(ImageConstants.googleLogo, height: 35),
                      ),
                    ),
                    Positioned(
                        bottom: 45,
                        left: 0,
                        right: 0,
                        child: Text(
                          "UI/UX Designer",
                          style: AppStyle.txtDmSans16W700primaryTextColor,
                          textAlign: TextAlign.center,
                        )),
                    Positioned(
                      bottom: 5,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          buildText("Google"),
                          buildBulletText(),
                          buildText("California"),
                          buildBulletText(),
                          buildText("1 day ago"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildSizedBox(25),
                    Text(
                      "Job Description",
                      style: AppStyle.txtOpenSans16W600primaryTextColor,
                    ),
                    buildSizedBox(16),
                    Text(
                      "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem ...",
                      style: AppStyle.txtOpenSans12W400primaryTextColor,
                    ),
                    buildSizedBox(10),
                    SizedBox(
                        width: 120,
                        height: 40,
                        child: SecondaryCustomButton(
                          btnName: "Read more",
                          onTap: () {},
                          allowBlue: true,
                        )),
                    buildSizedBox(25),
                    Text(
                      "Requirements",
                      style: AppStyle.txtOpenSans14W600primaryTextColor,
                    ),
                    buildRow("Sed ut perspiciatis unde omnis iste natus error sit."),
                    buildSizedBox(15),
                    buildRow(
                        "Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur & adipisci velit."),
                    buildSizedBox(15),
                    buildRow(
                        "Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit."),
                    buildSizedBox(15),
                    buildRow(
                        "Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur"),
                    buildSizedBox(25),
                    Text(
                      "Location",
                      style: AppStyle.txtOpenSans14W600primaryTextColor,
                    ),
                    buildSizedBox(16),
                    Text(
                      "Overlook Avenue, Belleville, NJ, USA",
                      style: AppStyle.txtDmSans12W400primaryTextColor,
                    ),
                    buildSizedBox(16),
                    Container(
                      height: 151,
                      child: Placeholder(),
                    ),
                    buildSizedBox(20),
                    Text(
                      "Informations",
                      style: AppStyle.txtOpenSans14W600primaryTextColor,
                    ),
                    buildSizedBox(16),
                    buildColumn("Bachelor’s Degree", "Bachelor’s Degree"),
                    buildColumn("Qualification", "Bachelor’s Degree"),
                    buildColumn("Experience", "3 Years"),
                    buildColumn("Job Type", "Full-Time"),
                    buildColumn("Specialization", "Design"),
                    buildSizedBox(15),
                    Text(
                      "Facilities and Others",
                      style: AppStyle.txtOpenSans14W600primaryTextColor,
                    ),
                    buildSizedBox(5),
                    buildRow("Medical"),
                    buildSizedBox(5),
                    buildRow("Dental"),
                    buildSizedBox(5),
                    buildRow("Technical Cartification"),
                    buildSizedBox(5),
                    buildRow("Meal Allowance"),
                    buildSizedBox(5),
                    buildRow("Transport Allowance"),
                    buildSizedBox(5),
                    buildRow("Regular Hours"),
                    buildSizedBox(5),
                    buildRow("Mondays-Fridays"),
                    buildSizedBox(50),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  SizedBox buildSizedBox(double height) => SizedBox(height: height,);

  Column buildColumn(String title, String info) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyle.txtOpenSans14W600primaryTextColor,
        ),
        buildSizedBox(5),
        Text(
          info,
          style: AppStyle.txtDmSans12W400primaryTextColor,
        ),
        buildSizedBox(10),
        Divider(),
      ],
    );
  }

  Row buildRow(String text) {
    return Row(
      children: [
        buildBulletText(size: 24),
        Expanded(
          child: Text(
            text,
            style: AppStyle.txtDmSans12W400primaryTextColor,
          ),
        ),
      ],
    );
  }

  Text buildBulletText({double size = 34}) => Text(
        " \u2022 ",
        style: TextStyle(fontSize: size),
      );

  Text buildText(String text) => Text(
        text,
        style: AppStyle.txtDmSans16W400primaryTextColor,
      );
}
