import 'package:flutter/material.dart';
import 'package:shigoto/core/constants/color_constants.dart';

import '../../core/constants/app_style.dart';
import '../../core/custom_widgets/input_label.dart';

class AddJob extends StatelessWidget {
  const AddJob({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white24,
        elevation: 0,
        actions: [
          Center(child: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Text("Post" ,style: AppStyle.txtDmSans12W700ff9228Color,),
          ))
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.camera_alt ,color: ColorConstants.ff9228Color),
            SizedBox(width: 20,),
            Icon(Icons.wallpaper ,color: ColorConstants.ff9228Color),
            Spacer(),
            Text("Add hashtag" ,style: AppStyle.txtDmSans12W700ff9228Color,),
            CircleAvatar(child: Icon(Icons.arrow_right_alt ,color: ColorConstants.ff9228Color)),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height: 10,),

              Text("Add Post",style: AppStyle.txtDmSans14W700primaryTextColor),
              SizedBox(height: 34,),
              Row(
                children: [
                  CircleAvatar(
                    radius: 27,
                    backgroundColor: ColorConstants.primaryColor,
                  ),
                  SizedBox(width: 11,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Orlando Diggs" , style: AppStyle.txtDmSans14W700primaryTextColor,),
                      Text("California, USA" ,style: AppStyle.txtDmSans12W400secondaryTextColor,),
                    ],
                  )

                ],
              ),
              SizedBox(height: 28,),
              const InputLabelText(text: "Post title"),
              TextFormField(
                style: AppStyle.txtDmSans12W400primaryTextColorA60,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  hintText: 'Write the title of your post here',
                ),
              ),
              SizedBox(height: 25,),
              const InputLabelText(text: "Description"),
              TextFormField(
                style: AppStyle.txtDmSans12W400primaryTextColorA60,
                keyboardType: TextInputType.emailAddress,
                minLines: 4,
                maxLines: null,
                decoration: const InputDecoration(
                  hintText: 'What do you want to talk about?',
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
