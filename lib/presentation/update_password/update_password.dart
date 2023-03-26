import 'package:flutter/material.dart';
import 'package:shigoto/core/constants/color_constants.dart';

import '../../core/constants/app_style.dart';
import '../../core/custom_widgets/buttons/custom_primary_Btn.dart';
import '../../core/custom_widgets/input_label.dart';

class UpdatePasswordView extends StatelessWidget{
  const UpdatePasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0 , horizontal: 80),
        child: SafeArea(child: PrimaryCustomButton(btnName: 'Update', onTap: () {  })),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 26,
                ),
                Text("Update Password", style: AppStyle.txtDmSans16W500primaryTextColor),

                SizedBox(height: 26),

                const InputLabelText(text: "Old Password"),
                TextFormField(
                  style: AppStyle.txtDmSans12W400primaryTextColorA60,
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    hintText: 'Old Password',
                    suffixIcon: Icon(Icons.visibility_off_outlined ,color: ColorConstants.secondaryTextColor)
                  ),
                ),

                SizedBox(height: 15),

                const InputLabelText(text: "New Password"),
                TextFormField(
                  style: AppStyle.txtDmSans12W400primaryTextColorA60,
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    hintText: 'New Password',
                    suffixIcon: Icon(Icons.visibility_off_outlined ,color: ColorConstants.secondaryTextColor)
                  ),
                ),

                SizedBox(height: 15),

                const InputLabelText(text: "Confirm Password"),
                TextFormField(
                  style: AppStyle.txtDmSans12W400primaryTextColorA60,
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    hintText: 'Confirm Password',
                    suffixIcon: Icon(Icons.visibility_off_outlined ,color: ColorConstants.secondaryTextColor)
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
  
}