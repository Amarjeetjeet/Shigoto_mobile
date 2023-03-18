import 'package:flutter/material.dart';

import '../../core/constants/app_style.dart';
import '../../core/constants/image_constants.dart';

class CompanyCard extends StatelessWidget{
  const CompanyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          SizedBox(height: 15,),
          CircleAvatar(
            child: Image.asset(
              ImageConstants.googleLogo,
              width: 28,
            ),
            radius: 25,
          ),
          SizedBox(height: 20,),

          Text("Google Inc" ,style: AppStyle.txtDmSans14W700primaryTextColor),
          SizedBox(height: 6,),

          Text("1M Followers",style: AppStyle.txtDmSans12W400AAA6B9TextColor),
          SizedBox(height: 15,),

          OutlinedButton(
              style: ElevatedButton.styleFrom(shape: StadiumBorder(),
                  padding: EdgeInsets.symmetric(vertical: 8 , horizontal: 32)),
              onPressed: () {}, child: Text("Follow",style: AppStyle.txtOpenSans12W400primaryTextColor)),

          SizedBox(height: 15,),
        ],
      ),
    );
  }

}