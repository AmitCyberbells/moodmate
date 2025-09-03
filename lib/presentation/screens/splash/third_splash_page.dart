import 'package:flutter/material.dart';
import 'package:moodmate/presentation/screens/splash/splash_state.dart';
import 'package:moodmate/presentation/widgets/background_video.dart';
import 'package:provider/provider.dart';

class ThirdSplashPage extends StatelessWidget {
  const ThirdSplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<SplashState>().init(context);
    });
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundVideo(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset("assets/images/logomark.png"),
                Text("MoodMate", style: Theme.of(context).textTheme.titleLarge),
                SizedBox(height: 50),
                Image.asset(
                  "assets/images/splash_image2.png",
                  fit: BoxFit.fitWidth,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
