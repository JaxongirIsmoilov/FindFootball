import 'package:find_football/src/core/enums/flavor.dart';

import 'main.dart' as app;

Future<void> main() async{
  await app.run(env: Flavor.STAGING);
}