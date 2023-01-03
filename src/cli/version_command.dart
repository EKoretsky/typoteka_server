import 'dart:io';

import 'package:args/command_runner.dart';

class VersionCommand extends Command {
  @override
  final description = 'get app version';

  @override
  final name = 'version';

  @override
  run() {
    final pubspec = File('pubspec.yaml').readAsLinesSync();
    final versionLine = pubspec.firstWhere((element) => element.contains('version'));
    final version = versionLine.split(' ').elementAt(1);
    print(version);
    exit(0);
  }
}
