import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  final PageRoute homeRoute;
  final Future<void> Function() initialize;
  const SplashPage(
      {Key? key, required this.homeRoute, required this.initialize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: initialize(),
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
