import 'package:flutter/material.dart';
import 'package:shigoto/core/constants/app_style.dart';

import '../../core/constants/color_constants.dart';

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
              trailing: Icon(Icons.arrow_forward_ios,
                  color: ColorConstants.c3b4657Color ,size: 18,),
              title: buildText("Password"),
              leading: Icon(Icons.lock_outline_rounded,
                  color: ColorConstants.c3b4657Color),
            ),
          ),
          SizedBox(height: 10),
          Container(
            decoration: buildBoxDecoration(),
            child: ListTile(
              trailing: Icon(Icons.arrow_forward_ios,
                  color: ColorConstants.c3b4657Color,size: 18),
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
