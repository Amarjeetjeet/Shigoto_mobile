import 'package:flutter/material.dart';
import 'package:shigoto/core/constants/app_style.dart';
import 'package:shigoto/core/constants/color_constants.dart';
import 'package:shigoto/core/constants/image_constants.dart';
import 'package:shigoto/core/custom_widgets/buttons/custom_primary_Btn.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView.separated(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 25.0, left: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: CircleAvatar(
                              backgroundColor: ColorConstants.secondaryColor,
                              radius: 35,
                              backgroundImage:
                                  AssetImage(ImageConstants.girlImage),
                            ),
                            title: Text(
                              "Arnold Leonardo",
                              style: AppStyle.txtDmSans12W700primaryTextColor,
                            ),
                            subtitle: Row(
                              children: [
                                Icon(
                                  Icons.watch_later_outlined,
                                  size: 16,
                                ),
                                SizedBox(
                                  width: 9,
                                ),
                                Text(
                                  "21 minuts ago",
                                  style: AppStyle.txtDmSans10W400aaa6B9Color,
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "What are the characteristics of a fake job call form?",
                            style: AppStyle.txtDmSans12W700primaryTextColor,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Because I always find fake job calls so I'm confused which job to take can you share your knowledge here? thank you",
                            style: AppStyle.txtDmSans12W400secondaryTextColor,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        color: ColorConstants.offPurpleColor.withOpacity(0.6),
                      ),
                      height: 64,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // Icon(Icons.favorite_border ,size: 19,),
                                Icon(
                                  Icons.favorite,
                                  size: 19,
                                  color: Colors.red,
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Text(
                                  "$index",
                                  style: AppStyle
                                      .txtDmSans12W400secondaryTextColor,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.messenger_outline,
                                  size: 19,
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Text(
                                  "12",
                                  style: AppStyle
                                      .txtDmSans12W400secondaryTextColor,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.share_outlined,
                                  size: 19,
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Text(
                                  "12",
                                  style: AppStyle
                                      .txtDmSans12W400secondaryTextColor,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              if(index == 3) {
                return SizedBox(
                  height: MediaQuery.of(context).size.width * 0.5,
                  child: ListView.builder(
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          width: 160,
                          child: Card(
                            child: Column(
                              children: [
                                SizedBox(height: 25,),
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
                                    onPressed: () {}, child: Text("Follow",style: AppStyle.txtOpenSans12W400primaryTextColor))
                              ],
                            ),
                          ),
                        );
                      }),
                );
              }   if(index == 6) {
                return SizedBox(
                  height: MediaQuery.of(context).size.width * 0.60,
                  child: ListView.builder(
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          width: 160,
                          child: Card(
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
                          ),
                        );
                      }),
                );
              }else{
                return Container();
              }
            },
          ),
        ),
      ),
    );
  }
}
