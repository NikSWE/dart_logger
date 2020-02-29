import './models/level.dart';
import './models/log.dart';

import './printers/simple.dart';

class Logger {
  static String defaultPrinter = "simple";
  static Level defaultLevel = Level.verbose;
  static Map<String, bool> logFormat = {
    "timeStamp": true,
    "lineNumber": true,
    "stackTrace": true,
    "level": true,
    "message": true,
  };

  static void stackTrace() {
    print(_getStackTrace().join('\n'));
  }

  static List<String> _getStackTrace() {
    List<String> stackTrace = StackTrace.current.toString().split('\n');
    stackTrace.removeLast();
    return stackTrace;
  }

  static int _getTimeStamp() => DateTime.now().millisecondsSinceEpoch;

  static int _getLineNumber([int statement = 0]) {
    List<String> stackTrace = _getStackTrace();
    return int.parse(stackTrace[statement].split(':')[2]);
  }

  static void debug([String message = '']) {
    if (Logger.defaultPrinter == "simple") {
      SimplePrinter.render(Log(
        level: Level.debug,
        message: message,
        timeStamp: _getTimeStamp(),
        stackTrace: _getStackTrace(),
        lineNumber: _getLineNumber(3),
      ));
    }
  }
}
