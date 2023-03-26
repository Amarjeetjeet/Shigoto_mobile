import 'package:flutter/cupertino.dart';
import 'package:shigoto/presentation/error_widget_or_empty_widget/widgets/error_message.dart';
import 'package:shigoto/presentation/error_widget_or_empty_widget/widgets/error_title.dart';

import '../../core/constants/image_constants.dart';
import '../../core/custom_widgets/buttons/custom_primary_Btn.dart';

class NoSearchResultFound extends StatelessWidget{
  const NoSearchResultFound({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.7,
        child: Column(
          children: [
            Image.asset(ImageConstants.noSearchFound ,width: 200,),
            SizedBox(height: 20),
            ErrorTitle(message: "No Message"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0 , vertical: 21.0),
              child: ErrorMessage(msg: '"You currently have no incoming messages thank you"',),
            ),
          ],
        ),
      ),
    );
  }

}