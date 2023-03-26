import 'package:flutter/material.dart';
import 'package:shigoto/core/constants/app_style.dart';
import 'package:shigoto/core/constants/image_constants.dart';
import 'package:shigoto/presentation/error_widget_or_empty_widget/widgets/error_message.dart';
import 'package:shigoto/presentation/error_widget_or_empty_widget/widgets/error_title.dart';

import '../../core/custom_widgets/buttons/custom_primary_Btn.dart';

class EmptyMessageBox extends StatelessWidget{
  const EmptyMessageBox({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.7,
        child: Column(
          children: [
            Image.asset(ImageConstants.emptyMessage ,width: 200,),
            SizedBox(height: 20),
            ErrorTitle(message: "No Message"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0 , vertical: 21.0),
              child: ErrorMessage(msg: '"You currently have no incoming messages thank you"',),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0 , vertical: 50.0),
              child: PrimaryCustomButton(btnName: 'Create a message', onTap: () {  },),
            )
          ],
        ),
      ),
    );
  }
  
}



