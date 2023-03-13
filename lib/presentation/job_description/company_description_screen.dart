import 'package:flutter/material.dart';
import 'package:shigoto/core/constants/app_style.dart';
import 'package:shigoto/core/custom_widgets/buttons/custom_primary_Btn.dart';
import 'package:shigoto/presentation/job_description/widgets/bullet_text.dart';
import 'package:shigoto/presentation/job_description/widgets/company_logo_designations.dart';
import 'package:shigoto/presentation/job_description/widgets/heading_details.dart';
import 'package:shigoto/presentation/job_description/widgets/heading_title.dart';

class CompanyDescriptionScreen extends StatelessWidget {
  const CompanyDescriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,elevation: 0,actions: [

      ],),
      bottomNavigationBar: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 08),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: IconButton(onPressed: (){}, icon: Icon(Icons.bookmark_border_outlined),),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 9,
                  child: PrimaryCustomButton(
                    btnName: 'Apply Now',
                    onTap: () {},
                  ),
                ),
              ],
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
              CompanyLogoDetails(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildSizedBox(25),
                    Text(
                      "About Company",
                      style: AppStyle.txtOpenSans14W600primaryTextColor,
                    ),
                    buildSizedBox(16),
                    Text(
                      "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.",
                      style: AppStyle.txtOpenSans12W400primaryTextColor,
                    ),
                    buildSizedBox(15),
                    Text(
                      "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas .",
                      style: AppStyle.txtOpenSans12W400primaryTextColor,
                    ),
                    buildSizedBox(15),
                    Text(
                      "Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain.",
                      style: AppStyle.txtOpenSans12W400primaryTextColor,
                    ),
                    buildSizedBox(10),
                    HeadingTitle(
                      title: 'Website',
                    ),
                    HeadingDetails(
                      info: "https://www.google.com",
                    ),
                    buildSizedBox(16),
                    HeadingTitle(
                      title: 'Industry',
                    ),
                    HeadingDetails(
                      info: "Internet product",
                    ),
                    buildSizedBox(16),
                    HeadingTitle(
                      title: 'Employee size',
                    ),
                    HeadingDetails(
                      info: "132,121 Employees",
                    ),
                    buildSizedBox(16),
                    HeadingTitle(
                      title: 'Head office',
                    ),
                    HeadingDetails(
                      info: "Mountain View, California, Amerika Serikat",
                    ),
                    buildSizedBox(16),
                    HeadingTitle(
                      title: 'Type',
                    ),
                    HeadingDetails(
                      info: "Multinational company",
                    ),
                    buildSizedBox(16),
                    HeadingTitle(
                      title: 'Since',
                    ),
                    HeadingDetails(
                      info: "1988",
                    ),
                    buildSizedBox(16),
                    HeadingTitle(
                      title: 'Specialization',
                    ),
                    HeadingDetails(
                      info: "Search technology, Web computing, Software and Online advertising",
                    ),
                    buildSizedBox(16),    HeadingTitle(
                      title: 'Company Gallery',
                    ),
                    buildSizedBox(16),

                    

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox buildSizedBox(double height) => SizedBox(
    height: height,
  );

  Column buildColumn(String title, String info) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeadingTitle(
          title: title,
        ),
        buildSizedBox(5),
        HeadingDetails(
          info: info,
        ),
        buildSizedBox(10),
        Divider(),
      ],
    );
  }

  Row buildRow(String text) {
    return Row(
      children: [
        BulletText(size: 24),
        Expanded(
          child: HeadingDetails(
            info: text,
          ),
        ),
      ],
    );
  }
}
