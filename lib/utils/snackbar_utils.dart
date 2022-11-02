part of 'utils.dart';

/// Показывает snackBar в приложении
/// Использовать только в слое ui
ScaffoldFeatureController showSnackBar(BuildContext context, String message, {Duration? duration, SnackBarAction? action}) {
  return _showSnackBar(ScaffoldMessenger.of(context), message, duration: duration, action: action);
}

ScaffoldFeatureController _showSnackBar(ScaffoldMessengerState state, String message, {Duration? duration, SnackBarAction? action}) {
  state.hideCurrentSnackBar();
  return state.showSnackBar(
    SnackBar(
      content: Text(message),
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.all(16.0),
      duration: duration ?? const Duration(seconds: 3),
      action: action,
    ),
  );
}
