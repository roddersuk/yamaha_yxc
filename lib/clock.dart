import 'src/utilities.dart';
import 'constants.dart';

class Clock {
  Future getSettings() async => Core.call(
        section: kClock,
        function: 'getSettings',
      );

  Future setAutoSync({required bool enable}) async => Core.call(
        section: kClock,
        function: 'setAutoSync',
        parameters: {
          'enable': enable.toString(),
        },
      );

  Future setDateAndTime({required String datetime}) async => Core.call(
        section: kClock,
        function: 'setDateAndTime',
        parameters: {
          'datetime': datetime,
        },
      );

  Future setClockFormat({required String format}) async => Core.call(
        section: kClock,
        function: 'setClockFormat',
        parameters: {
          'format': format,
        },
      );

  Future setAlarmSettings({
    bool? alarmOn,
    int? volume,
    int? fadeInterval,
    int? fadeType,
    String? mode,
    bool? repeat,
    AlarmDetail? detail,
  }) async {
    return Core.call(
      section: kClock,
      function: 'setAlarmSettings',
      parameters: {
        'alarm_on': Core.toStringOrNull(alarmOn),
        'volume': Core.toStringOrNull(volume),
        'fade_interval': Core.toStringOrNull(fadeInterval),
        'fade_type': Core.toStringOrNull(fadeType),
        'mode': mode,
        'repeat': Core.toStringOrNull(repeat),
        'detail': Core.toStringOrNull(detail),
      },
    );
  }
}

// TODO: toString methods
class AlarmDetail {
  String? day;
  bool? enable;
  String? time;
  bool? beep;
  String? playbackType;
  ResumeDetail? resume;
  PresetDetail? preset;
}

class ResumeDetail {
  String? input;
}

class PresetDetail {
  String? type;
  int? num;
  bool? snooze;
}
