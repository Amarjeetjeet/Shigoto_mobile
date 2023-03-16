import 'package:flutter/material.dart';

import '../../core/constants/app_style.dart';
import '../../core/constants/color_constants.dart';
import '../../core/constants/image_constants.dart';
import '../../router/app_router.dart';

class JobCardBookmark extends StatelessWidget{
  const JobCardBookmark({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, AppRouter.jobDescription);
          },
          child: Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: ColorConstants.offPurpleColor,
                    radius: 25,
                    child: Image.asset(ImageConstants.apple,width: 20,),
                  ),

                  trailing: Icon(
                    Icons.bookmark_border_outlined,
                    color: ColorConstants.secondaryTextColor,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0 , horizontal: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Product Designer",
                        style: AppStyle.txtDmSans14W700primaryTextColor,
                      ),
                      SizedBox(height: 4,),
                      Row(
                        children: [
                          Text("Google inc"),
                          Text(" \u2022 "),
                          Text("California, USA "),
                        ],
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0 , horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Design" ,style: AppStyle.txtDmSans10W400primaryTextColor,),
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            backgroundColor: ColorConstants.cbc9dColor,shadowColor: Colors.transparent),
                      ),

                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Full time" ,style: AppStyle.txtDmSans10W400primaryTextColor,),
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            backgroundColor: ColorConstants.cbc9dColor,shadowColor: Colors.transparent),

                      ),

                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Senior designer" ,style: AppStyle.txtDmSans10W400primaryTextColor,),
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            backgroundColor: ColorConstants.ff6b2cColor.withOpacity(0.2),
                            shadowColor: Colors.transparent
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0 , horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("25 minute ago" ,style: AppStyle.txtDmSans12W400AAA6B9TextColor,),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0 ,bottom: 5 ,top: 5),
                        child: Text("\$15K/Mo",style: AppStyle.txtDmSans16W700blackColor,),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, AppRouter.jobDescription);
          },
          child: Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: ColorConstants.offPurpleColor,
                    radius: 25,
                    child: Image.asset(ImageConstants.apple,width: 20,),
                  ),

                  trailing: Icon(
                    Icons.bookmark_border_outlined,
                    color: ColorConstants.secondaryTextColor,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0 , horizontal: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Product Designer",
                        style: AppStyle.txtDmSans14W700primaryTextColor,
                      ),
                      SizedBox(height: 4,),
                      Row(
                        children: [
                          Text("Google inc"),
                          Text(" \u2022 "),
                          Text("California, USA "),
                        ],
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0 , horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Design" ,style: AppStyle.txtDmSans10W400primaryTextColor,),
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            backgroundColor: ColorConstants.cbc9dColor,shadowColor: Colors.transparent),
                      ),

                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Full time" ,style: AppStyle.txtDmSans10W400primaryTextColor,),
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            backgroundColor: ColorConstants.cbc9dColor,shadowColor: Colors.transparent),

                      ),

                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Senior designer" ,style: AppStyle.txtDmSans10W400primaryTextColor,),
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            backgroundColor: ColorConstants.ff6b2cColor.withOpacity(0.2),
                            shadowColor: Colors.transparent
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0 , horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("25 minute ago" ,style: AppStyle.txtDmSans12W400AAA6B9TextColor,),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0 ,bottom: 5 ,top: 5),
                        child: Text("\$15K/Mo",style: AppStyle.txtDmSans16W700blackColor,),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, AppRouter.jobDescription);
          },
          child: Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: ColorConstants.offPurpleColor,
                    radius: 25,
                    child: Image.asset(ImageConstants.apple,width: 20,),
                  ),

                  trailing: Icon(
                    Icons.bookmark_border_outlined,
                    color: ColorConstants.secondaryTextColor,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0 , horizontal: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Product Designer",
                        style: AppStyle.txtDmSans14W700primaryTextColor,
                      ),
                      SizedBox(height: 4,),
                      Row(
                        children: [
                          Text("Google inc"),
                          Text(" \u2022 "),
                          Text("California, USA "),
                        ],
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0 , horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Design" ,style: AppStyle.txtDmSans10W400primaryTextColor,),
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            backgroundColor: ColorConstants.cbc9dColor,shadowColor: Colors.transparent),
                      ),

                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Full time" ,style: AppStyle.txtDmSans10W400primaryTextColor,),
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            backgroundColor: ColorConstants.cbc9dColor,shadowColor: Colors.transparent),

                      ),

                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Senior designer" ,style: AppStyle.txtDmSans10W400primaryTextColor,),
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            backgroundColor: ColorConstants.ff6b2cColor.withOpacity(0.2),
                            shadowColor: Colors.transparent
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0 , horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("25 minute ago" ,style: AppStyle.txtDmSans12W400AAA6B9TextColor,),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0 ,bottom: 5 ,top: 5),
                        child: Text("\$15K/Mo",style: AppStyle.txtDmSans16W700blackColor,),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, AppRouter.jobDescription);
          },
          child: Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: ColorConstants.offPurpleColor,
                    radius: 25,
                    child: Image.asset(ImageConstants.apple,width: 20,),
                  ),

                  trailing: Icon(
                    Icons.bookmark_border_outlined,
                    color: ColorConstants.secondaryTextColor,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0 , horizontal: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Product Designer",
                        style: AppStyle.txtDmSans14W700primaryTextColor,
                      ),
                      SizedBox(height: 4,),
                      Row(
                        children: [
                          Text("Google inc"),
                          Text(" \u2022 "),
                          Text("California, USA "),
                        ],
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0 , horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Design" ,style: AppStyle.txtDmSans10W400primaryTextColor,),
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            backgroundColor: ColorConstants.cbc9dColor,shadowColor: Colors.transparent),
                      ),

                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Full time" ,style: AppStyle.txtDmSans10W400primaryTextColor,),
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            backgroundColor: ColorConstants.cbc9dColor,shadowColor: Colors.transparent),

                      ),

                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Senior designer" ,style: AppStyle.txtDmSans10W400primaryTextColor,),
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            backgroundColor: ColorConstants.ff6b2cColor.withOpacity(0.2),
                            shadowColor: Colors.transparent
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0 , horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("25 minute ago" ,style: AppStyle.txtDmSans12W400AAA6B9TextColor,),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0 ,bottom: 5 ,top: 5),
                        child: Text("\$15K/Mo",style: AppStyle.txtDmSans16W700blackColor,),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

      ],
    );
  }
  SizedBox buildSizedBox(double height) {
    return SizedBox(
      height: height,
    );
  }
}