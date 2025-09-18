import 'package:flutter/material.dart';
import 'package:moodmate/config/provider_setup.dart';
import 'package:moodmate/core/themes/app_theme.dart';
import 'package:moodmate/presentation/screens/splash/fourth_spalsh_page.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void dispose() async {
    final prefs = await SharedPreferences.getInstance();
    final isRememberMe = prefs.get("isRememberMe");
    if (isRememberMe == false) {
      prefs.clear();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          home: FourthSpalshPage(),
        );
      },
    );
  }
}
