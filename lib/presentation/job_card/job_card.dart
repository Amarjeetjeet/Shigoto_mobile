import 'package:flutter/material.dart';

import '../../core/constants/app_style.dart';
import '../../core/constants/color_constants.dart';
import '../../core/constants/image_constants.dart';
import '../../router/app_router.dart';

class JobCard extends StatelessWidget{
  const JobCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, AppRouter.jobDescription);
      },
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundColor: ColorConstants.offPurpleColor,
                radius: 25,
                child: Image.asset(ImageConstants.apple,width: 20,),
              ),
              title: Text(
                "Product Designer",
                style: AppStyle.txtDmSans14W700primaryTextColor,
              ),
              subtitle: Row(
                children: [
                  Text("Google inc"),
                  Text(" \u2022 "),
                  Text("California, USA "),
                ],
              ),
              trailing: Icon(
                Icons.bookmark_border_outlined,
                color: ColorConstants.secondaryTextColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0 ,bottom: 5 ,top: 5),
              child: Text("\$15K/Mo",style: AppStyle.txtDmSans12W400primaryTextColor,),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Senior designer" ,style: AppStyle.txtDmSans10W400primaryTextColor,),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: ColorConstants.cbc9dColor,shadowColor: Colors.transparent),
                ),

                ElevatedButton(
                  onPressed: () {},
                  child: Text("Full time" ,style: AppStyle.txtDmSans10W400primaryTextColor,),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: ColorConstants.cbc9dColor,shadowColor: Colors.transparent),

                ),

                ElevatedButton(
                  onPressed: () {},
                  child: Text("Apply" ,style: AppStyle.txtDmSans10W400primaryTextColor,),
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      backgroundColor: ColorConstants.ff6b2cColor.withOpacity(0.2),
                      shadowColor: Colors.transparent
                  ),
                ),
              ],
            ),

            buildSizedBox(10)
          ],
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