import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:todos_example/app.dart';
import 'package:todos_example/splash_page/pages/splash_page.dart';
import 'package:todos_example/todo/pages/todo_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashPage(
        homeRoute: TodoPage.route,
        initialize: () async {
          await App.addAmplifyDependencies();

          Amplify.Hub.listen([HubChannel.DataStore], (event) {
            if (event.eventName == "networkStatus") {
              if ((event.payload as NetworkStatusEvent).active) {
                Amplify.DataStore.start();
              } else {
                Amplify.DataStore.stop();
              }
            }
          });
          await Future.wait([
            App.configureDependencies(),
            Future.delayed(const Duration(seconds: 1)),
          ]);
        },
      ),
    );
  }
}
