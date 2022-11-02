import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:friflex_test/app/app.dart';
import 'package:friflex_test/core/di/injectable.dart';

Future<void> main() async {
  /// Настройка окружения согласно режиму разработки
  await dotenv.load(fileName: kDebugMode ? ".env.dev" : ".env");
  await configureDependencies();

  runApp(const FriflexTestApp());
}
