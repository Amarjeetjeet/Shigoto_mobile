import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../logic/cubit/theme_state.dart';
import 'material_app_screen.dart';

class BlocProviderScreen extends StatelessWidget {
  const BlocProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(
          create: (context) => ThemeCubit(),
        ),
      ],
      child: const MaterialAppInitScreen(),
    );
  }
}