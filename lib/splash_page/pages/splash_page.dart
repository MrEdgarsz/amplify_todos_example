import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  final PageRoute homeRoute;
  const SplashPage({Key? key, required this.homeRoute}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _init(),
        builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            Future.microtask(
                () => Navigator.pushReplacement(context, homeRoute));
          }
          return const SplashView();
        },
      ),
    );
  }

  Future<void> _init() async {
    await Future.delayed(const Duration(seconds: 2));
    print("first future");
    await Future.delayed(const Duration(seconds: 2));
    print("second future");
    return;
  }
}

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "Loading...",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            CircularProgressIndicator(),
          ],
        ),
      ],
    );
  }
}
