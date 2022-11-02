import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  /// Возвращает DateTime в нужном формате, отдельно для даты и времени
  String toDateFormat() => DateFormat('dd.MM.yyyy').format(this);

  String toTimeFormat() => DateFormat('HH:mm').format(this);
}
