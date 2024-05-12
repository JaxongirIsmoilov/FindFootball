import 'package:find_football/src/core/enums/flavor.dart';

import 'main.dart' as app;

Future<void> main() async {
  app.run(env: Flavor.TEST);
}