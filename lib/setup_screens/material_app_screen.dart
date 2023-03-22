import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/constants/strings.dart';
import '../core/themes/app_theme.dart';
import '../logic/cubit/theme_state.dart';
import '../router/app_router.dart';

class MaterialAppInitScreen extends StatefulWidget {
  const MaterialAppInitScreen({
    Key? key,
  }) : super(key: key);

  @override
  _MaterialAppInitScreenState createState() => _MaterialAppInitScreenState();
}

class _MaterialAppInitScreenState extends State<MaterialAppInitScreen> with WidgetsBindingObserver {
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void didChangePlatformBrightness() {
    context.read<ThemeCubit>().updateAppTheme();
    super.didChangePlatformBrightness();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.appTitle,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode:
          context.select((ThemeCubit themeCubit) => themeCubit.state.themeMode),
      debugShowCheckedModeBanner: false,
      initialRoute: AppRouter.customStag,
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
