import 'package:flutter/material.dart';
import 'package:shigoto/presentation/error_widget_or_empty_widget/widgets/error_message.dart';
import 'package:shigoto/presentation/error_widget_or_empty_widget/widgets/error_title.dart';

import '../../core/constants/image_constants.dart';
import '../../core/custom_widgets/buttons/custom_primary_Btn.dart';

class NoNotificationFound extends StatelessWidget{
  const NoNotificationFound({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.7,
        child: Column(
          children: [
            ErrorTitle(message: "No notifications"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0 , vertical: 21.0),
              child: ErrorMessage(msg: "You have no notifications at this time thank you",),
            ),
            SizedBox(height: 20),
            Image.asset(ImageConstants.noNotificationFound ,width: 180),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

}