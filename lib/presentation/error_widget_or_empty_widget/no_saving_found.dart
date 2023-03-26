import 'package:flutter/material.dart';
import 'package:shigoto/presentation/error_widget_or_empty_widget/widgets/error_message.dart';
import 'package:shigoto/presentation/error_widget_or_empty_widget/widgets/error_title.dart';

import '../../core/constants/image_constants.dart';
import '../../core/custom_widgets/buttons/custom_primary_Btn.dart';

class NoSavingFound extends StatelessWidget{
  const NoSavingFound({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.7,
        child: Column(
          children: [
            ErrorTitle(message: "No Savings"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0 , vertical: 21.0),
              child: ErrorMessage(msg: "You don't have any jobs saved, please find it in search to save jobs",),
            ),
            SizedBox(height: 20),
            Image.asset(ImageConstants.noSearchFound ,width: 180),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0 , vertical: 50.0),
              child: PrimaryCustomButton(btnName: 'Find a job', onTap: () {  },),
            )
          ],
        ),
      ),
    );
  }

}