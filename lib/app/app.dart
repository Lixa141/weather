import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:friflex_test/app/domain/cubit/app_start_cubit.dart';
import 'package:friflex_test/app/domain/cubit/app_start_state.dart';
import 'package:friflex_test/core/navigation/navigation.dart';
import 'package:friflex_test/features/auth/ui/screens/login_screen.dart';
import 'package:friflex_test/features/cities/ui/screens/cities_screen.dart';
import 'package:friflex_test/features/splash/ui/screens/splash_screen.dart';

class FriflexTestApp extends StatefulWidget {
  const FriflexTestApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _FriflexTestAppState();
  }
}

class _FriflexTestAppState extends State<FriflexTestApp> {
  // late StreamSubscription<AuthStatus> _statusSubscription;

  @override
  void initState() {
    super.initState();
    // _statusSubscription = getIt<AuthRepository>().statuses.listen((status) {
    //   NavigationService.current.rootKey.currentState?.popUntil(ModalRoute.withName(Navigator.defaultRouteName));
    // }); // TODO: Для логаута

    print(dotenv.env['API_KEY']);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AppStartCubit()..start(),
      child: BlocBuilder<AppStartCubit, AppStartState>(
        builder: (context, appState) {
          return MaterialApp(
            navigatorKey: NavigationService.current.rootKey,
            theme: ThemeData(),
            home: Builder(
              builder: (context) {
                switch (appState) {
                  case AppStartState.initializing:
                    return const SplashScreen();

                  case AppStartState.loggedIn:
                    return const CitiesScreen();

                  case AppStartState.loggedOut:
                    return const LoginScreen();
                }
              },
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    // _statusSubscription.cancel();

    super.dispose();
  }
}
