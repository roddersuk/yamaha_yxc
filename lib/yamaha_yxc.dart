/// Provide access to the Yamaha Extended Control API to
/// give control over Musiccast devices.
/// Refer to https://wiki.elvis.science/index.php?title=File:Yamaha_Extended_Control_API_Specification_(Basic).pdf
/// and https://wiki.elvis.science/index.php?title=File:Yamaha_Extended_Control_API_Specification_(Basic).pdf for details
library yamaha_yxc;

import 'dart:math';
import 'dart:convert';
import 'package:http/http.dart' as http;

part 'cd.dart';
part 'clock.dart';
part 'distribution.dart';
part 'network.dart';
part 'system.dart';
part 'tuner.dart';
part 'zone.dart';
part 'constants.dart';
part 'src/utilities.dart';

class YamahaYXC {
  System system = System();
  Network network = Network();
  Zone zone = Zone();
  CD cd = CD();
  Tuner tuner = Tuner();
  Distribution distribution = Distribution();
  Clock clock = Clock();
  String baseUrl;

  YamahaYXC(this.baseUrl) {
    Core.base = this.baseUrl;
  }

  bool isValid(var renderer) {
    bool valid = true;
    String name = renderer['friendlyName'];
    if (name.endsWith(' L') || name.endsWith(' R')) {
      valid = false;
    }
    return valid;
  }
}
