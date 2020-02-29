import 'dart:io';

import 'package:io/ansi.dart';

import '../models/log.dart';
import '../main.dart';
import './printer.dart';

class SimplePrinter {
  // format: [timeStamp] level lineNumber message
  //         stackTrace
  static void render(Log log) {
    if (Logger.logFormat["timeStamp"]) {
      stdout.write(yellow
          .wrap('[${DateTime.fromMillisecondsSinceEpoch(log.timeStamp)}] '));
    }
    if (Logger.logFormat["level"]) {
      stdout.write('${Printer.levelPrefix[log.level]} ');
    }
    if (Logger.logFormat["lineNumber"]) {
      stdout.write('${log.lineNumber} ');
    }
    if (Logger.logFormat['message']) {
      stdout.write('${log.message}\n');
    }
    if (Logger.logFormat['stackTrace']) {
      print(log.stackTrace.join('\n'));
    }
  }
}
