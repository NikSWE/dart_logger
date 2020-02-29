import '../models/level.dart';

class Printer {
  static Map<Level, String> levelPrefix = {
    Level.debug: 'D',
    Level.error: 'E',
    Level.info: 'I',
    Level.warning: 'W',
    Level.verbose: 'V',
  };
}
