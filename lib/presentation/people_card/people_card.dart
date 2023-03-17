import 'package:flutter/material.dart';

import '../../core/constants/app_style.dart';
import '../../core/constants/image_constants.dart';

class PeopleCard extends StatelessWidget{
  const PeopleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          SizedBox(height: 25,),
          CircleAvatar(
            child: Image.asset(
              ImageConstants.girlImage,
              width: 28,
            ),
            radius: 25,
          ),
          SizedBox(height: 20,),

          Text("Hemangi B." ,style: AppStyle.txtDmSans14W700primaryTextColor),
          SizedBox(height: 6,),

          Text("HR. JB Solutions", overflow: TextOverflow.ellipsis,
              maxLines: 1,
              textAlign: TextAlign.center,style: AppStyle.txtDmSans14W600AAA60B9TextColor),
          Text("Hiring Node js Developers and PHP Developer",
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,style: AppStyle.txtDmSans12W400AAA6B9TextColor),
          SizedBox(height: 15,),

          OutlinedButton(
              style: ElevatedButton.styleFrom(shape: StadiumBorder(),
                  padding: EdgeInsets.symmetric(vertical: 8 , horizontal: 32)),
              onPressed: () {}, child: Text("Connect",style: AppStyle.txtOpenSans12W400primaryTextColor))
        ],
      ),
    );
  }

}