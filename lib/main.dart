import 'package:flutter/material.dart';
import 'package:moodmate/core/themes/app_theme.dart';
import 'package:moodmate/presentation/screens/splash/splash_page.dart';
import 'package:moodmate/presentation/screens/splash/splash_state.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => SplashState())],

      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          home: SplashPage(),
        );
      },
    );
  }
}
