library yamaha_yxc;

import 'package:yamaha_yxc/cd.dart';
import 'package:yamaha_yxc/clock.dart';
import 'package:yamaha_yxc/distribution.dart';
import 'package:yamaha_yxc/network.dart';
import 'package:yamaha_yxc/system.dart';
import 'package:yamaha_yxc/tuner.dart';
import 'package:yamaha_yxc/zone.dart';

export 'constants.dart';
import 'src/utilities.dart';

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
