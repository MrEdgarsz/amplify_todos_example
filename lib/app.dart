import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:todos_example/amplifyconfiguration.dart';

import 'models/ModelProvider.dart';

class App {
  static Future<void> configureDependencies() async {
    if (!Amplify.isConfigured) {
      try {
        await Amplify.configure(amplifyconfig);
        return;
      } on AmplifyAlreadyConfiguredException {
        print(
          "Tried to reconfigure Amplify; this can occur when your app restarts on Android.",
        );
        return;
      }
    } else {
      return;
    }
  }

  static addAmplifyDependencies() async {
    AmplifyDataStore datastorePlugin =
        AmplifyDataStore(modelProvider: ModelProvider.instance);
    await Amplify.addPlugin(datastorePlugin);
    await Amplify.addPlugin(AmplifyAPI());
  }
}
