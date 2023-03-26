import 'package:flutter/material.dart';
import 'package:shigoto/core/constants/app_style.dart';
import 'package:shigoto/core/custom_widgets/buttons/custom_secondary_color.dart';
import 'package:shigoto/router/app_router.dart';

import '../../core/constants/color_constants.dart';
import '../../core/custom_widgets/buttons/custom_primary_Btn.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ListView(
        children: [
          SizedBox(
            height: 26,
          ),
          Text("Settings", style: AppStyle.txtDmSans16W500primaryTextColor),
          SizedBox(
            height: 26,
          ),
          Container(
            decoration: buildBoxDecoration(),
            child: ListTile(
              leading: Icon(Icons.notifications_none_sharp,
                  color: ColorConstants.c3b4657Color),
              title: buildText("Notifications"),
              trailing: Switch(
                value: true,
                onChanged: (bool value) {},
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            decoration: buildBoxDecoration(),
            child: ListTile(
              leading: Icon(Icons.dark_mode_outlined,
                  color: ColorConstants.c3b4657Color),
              title: buildText("Dark mode"),
              trailing: Switch(
                value: false,
                onChanged: (bool value) {},
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            decoration: buildBoxDecoration(),
            child: ListTile(
              onTap: (){
                Navigator.pushNamed(context, AppRouter.updatePassword);
              },
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: ColorConstants.c3b4657Color,
                size: 18,
              ),
              title: buildText("Password"),
              leading: Icon(Icons.lock_outline_rounded,
                  color: ColorConstants.c3b4657Color),
            ),
          ),
          SizedBox(height: 10),
          Container(
            decoration: buildBoxDecoration(),
            child: ListTile(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 28.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 5,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: ColorConstants.primaryColor,
                                ),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Text("Log out",style: AppStyle.txtDmSans16W700primaryTextColor),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Are you sure you want to leave?",
                                  style: AppStyle.txtDmSans12W400secondaryTextColor),
                              SizedBox(
                                height: 25,
                              ),
                              PrimaryCustomButton(
                                btnName: 'YES',
                                onTap: () {},
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SecondaryCustomButton(
                                btnName: 'CANCEL',
                                onTap: () {},
                              ),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      );
                    });
              },
              trailing: Icon(Icons.arrow_forward_ios,
                  color: ColorConstants.c3b4657Color, size: 18),
              title: buildText("Logout"),
              leading: Icon(Icons.logout_outlined,
                  color: ColorConstants.c3b4657Color),
            ),
          )
        ],
      ),
    );
  }

  Text buildText(String title) =>
      Text(title, style: AppStyle.txtDmSans14W400primaryTextColor);

  BoxDecoration buildBoxDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
    );
  }
}
