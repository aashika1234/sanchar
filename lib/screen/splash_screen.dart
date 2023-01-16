import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'asset/images/logo.png',
              width: 300,
              height: 300,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  '    Connecting',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 9, horizontal: 5),
                  width: 30,
                  height: 25,
                  child: const LoadingIndicator(
                    indicatorType: Indicator.ballBeat,
                    colors: [Colors.black],
                    strokeWidth: 2,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
