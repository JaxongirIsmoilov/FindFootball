import 'dart:async';

import 'package:find_football/src/core/app/app.dart';
import 'package:find_football/src/core/bloc/app_bloc_observer.dart';
import 'package:find_football/src/core/di/di.dart';
import 'package:find_football/src/core/enums/flavor.dart';
import 'package:find_football/src/core/services/firebase_service.dart';
import 'package:find_football/src/core/services/hive_service.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:logger/logger.dart';

var logger = Logger(
  printer: PrettyPrinter(),
);
var loggerNoStack = Logger(
  printer: PrettyPrinter(methodCount: 0),
);

Future<void> run({Flavor env = Flavor.PROD}) async {
  await runZonedGuarded<Future<void>>(
    () async {
      final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
      FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
      await SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp]);
      await Hive.initFlutter();
      await FirebaseService.initializeFirebase();
      await HiveService.initHive();
      await configureDependencies(env);
      await dotenv.load(fileName: ".env");
      Bloc.observer = AppBlocObserver();
      runApp(
        App(),
      );
    },
    (error, stack) {
      WidgetsFlutterBinding.ensureInitialized();
      FirebaseCrashlytics.instance.recordError(error, stack);
    },
    zoneSpecification: ZoneSpecification(
      createTimer: (self, parent, zone, duration, void Function() callback) {
        return parent.createTimer(zone, duration, callback);
      },
      createPeriodicTimer:
          (self, parent, zone, duration, void Function(Timer) callback) {
        return parent.createPeriodicTimer(zone, duration, callback);
      },
    ),
  );
}

Future<void> main() async{
  await run();
}
