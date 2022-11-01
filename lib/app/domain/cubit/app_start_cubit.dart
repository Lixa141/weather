import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friflex_test/app/domain/cubit/app_start_state.dart';
// import 'package:friflex_test/core/di/service_locator.dart';

class AppStartCubit extends Cubit<AppStartState> {
  //final _authService = getIt<AuthRepository>();

  // late StreamSubscription<AppUser?> _appUserChangesSubscription;

  AppStartCubit() : super(AppStartState.initializing) {
    // _appUserChangesSubscription = ProfileRepository.current.appUserChanges.listen((appUser) {
    //   emit(appUser != null ? FlAppState.loggedIn : FlAppState.loggedOut);
    // }); // TODO: можно сделать не на пользователе
  }

  Future<void> start() async {
    //await _authService.restoreSession();
  }

  @override
  Future<void> close() async {
    // await _appUserChangesSubscription.cancel();
    await super.close();
  }
}