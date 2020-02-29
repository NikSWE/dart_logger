import 'level.dart';

class Log {
  final Level level;
  final dynamic message;
  final dynamic error;
  final List<String> stackTrace;
  final int timeStamp;
  final int lineNumber;

  Log({
    this.level,
    this.message,
    this.error,
    this.stackTrace,
    this.timeStamp,
    this.lineNumber,
  });
}
