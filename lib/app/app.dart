import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:friflex_test/features/cities/ui/screens/city_screen.dart';
import 'package:friflex_test/generated/l10n.dart';

/// Главный виджет приложения
/// Локализация помимо своего назначения используется для хранения строк в одном месте
class FriflexTestApp extends StatelessWidget {
  const FriflexTestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: const CitiesScreen(),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: const Locale("ru", ""),
      supportedLocales: const [Locale("ru", "")],
    );
  }
}
