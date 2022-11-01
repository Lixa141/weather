import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:friflex_test/app/app.dart';
import 'package:friflex_test/app/config.dart';
import 'package:friflex_test/core/di/injectable.dart';

Future<void> main() async {
  AppConfig.init();
  await configureDependencies();
  await dotenv.load(fileName: ".env");

  runApp(const FriflexTestApp());
}
