import 'constants.dart';
import 'src/utilities.dart';

class Zone {
  Future getStatus({
    ZoneType zone = ZoneType.main,
  }) async =>
      Core.call(
        section: kZone,
        function: 'getStatus',
        parameters: {
          'zone': zone.str,
        },
      );

  Future getSoundProgramList({
    ZoneType zone = ZoneType.main,
  }) async =>
      Core.call(
        section: kZone,
        function: 'getSoundProgramList',
        parameters: {
          'zone': zone.str,
        },
      );

  Future setPower({
    required PowerStatus power,
    ZoneType zone = ZoneType.main,
  }) async =>
      Core.call(
        section: kZone,
        function: 'setPower',
        parameters: {
          'power': power.str,
          'zone': zone.str,
        },
      );

  Future setSleep({
    ZoneType zone = ZoneType.main,
    required int sleep,
  }) async =>
      Core.call(
        section: kZone,
        function: 'setSleep',
        parameters: {
          'zone': zone.str,
          'sleep': sleep.toString(),
        },
      );

  Future setVolume({
    ZoneType zone = ZoneType.main,
    required int volume,
    int? step,
  }) async =>
      Core.call(
        section: kZone,
        function: 'setVolume',
        parameters: {
          'zone': zone.str,
          'volume': volume.toString(),
          'step': Core.toStringOrNull(step),
        },
      );

  Future setMute({
    ZoneType zone = ZoneType.main,
    required bool enable,
  }) async =>
      Core.call(
        section: kZone,
        function: 'setMute',
        parameters: {
          'zone': zone.str,
          'enable': enable.toString(),
        },
      );

  Future setInput({
    ZoneType zone = ZoneType.main,
    required String input,
    String? mode,
  }) async =>
      Core.call(
        section: kZone,
        function: 'setInput',
        parameters: {
          'zone': zone.str,
          'input': input,
          'mode': mode,
        },
      );

  Future setSoundProgram({
    ZoneType zone = ZoneType.main,
    required String program,
  }) async =>
      Core.call(
        section: kZone,
        function: 'setSoundProgram',
        parameters: {
          'zone': zone.str,
          'program': program,
        },
      );

  Future set3dSurround({
    ZoneType zone = ZoneType.main,
    required bool enable,
  }) async =>
      Core.call(
        section: kZone,
        function: 'set3dSurround',
        parameters: {
          'zone': zone.str,
          'enable': enable.toString(),
        },
      );

  Future setDirect({
    ZoneType zone = ZoneType.main,
    required bool enable,
  }) async =>
      Core.call(
        section: kZone,
        function: 'setDirect',
        parameters: {
          'zone': zone.str,
          'enable': enable.toString(),
        },
      );

  Future setPureDirect({
    ZoneType zone = ZoneType.main,
    required bool enable,
  }) async =>
      Core.call(
        section: kZone,
        function: 'setPureDirect',
        parameters: {
          'zone': zone.str,
          'enable': enable.toString(),
        },
      );

  Future setEnhancer({
    ZoneType zone = ZoneType.main,
    required bool enable,
  }) async =>
      Core.call(
        section: kZone,
        function: 'setEnhancer',
        parameters: {
          'zone': zone.str,
          'enable': enable.toString(),
        },
      );

  Future setToneControl({
    ZoneType zone = ZoneType.main,
    String? mode,
    int? bass,
    int? treble,
  }) async =>
      Core.call(
        section: kZone,
        function: 'setToneControl',
        parameters: {
          'zone': zone.str,
          'mode': mode,
          'bass': Core.toStringOrNull(bass),
          'treble': Core.toStringOrNull(treble),
        },
      );

  Future setEqualizer({
    ZoneType zone = ZoneType.main,
    String? mode,
    int? low,
    int? mid,
    int? high,
  }) async =>
      Core.call(
        section: kZone,
        function: 'setEqualizer',
        parameters: {
          'zone': zone.str,
          'mode': mode,
          'low': Core.toStringOrNull(low),
          'mid': Core.toStringOrNull(mid),
          'high': Core.toStringOrNull(high),
        },
      );

  Future setBalance({
    ZoneType zone = ZoneType.main,
    required int value,
  }) async =>
      Core.call(
        section: kZone,
        function: 'setBalance',
        parameters: {
          'zone': zone.str,
          'value': value.toString(),
        },
      );

  Future setDialogueLevel({
    ZoneType zone = ZoneType.main,
    required int value,
  }) async =>
      Core.call(
        section: kZone,
        function: 'setDialogueLevel',
        parameters: {
          'zone': zone.str,
          'value': value.toString(),
        },
      );

  Future setDialogueLift({
    ZoneType zone = ZoneType.main,
    required int value,
  }) async =>
      Core.call(
        section: kZone,
        function: 'setDialogueLift',
        parameters: {
          'zone': zone.str,
          'value': value.toString(),
        },
      );

  Future setClearVoice({
    ZoneType zone = ZoneType.main,
    required bool enable,
  }) async =>
      Core.call(
        section: kZone,
        function: 'setClearVoice',
        parameters: {
          'zone': zone.str,
          'enable': enable.toString(),
        },
      );

  Future setSubwooferVolume({
    ZoneType zone = ZoneType.main,
    required int volume,
  }) async =>
      Core.call(
        section: kZone,
        function: 'setSubwooferVolume',
        parameters: {
          'zone': zone.str,
          'volume': volume.toString(),
        },
      );

  Future setBassExtension({
    ZoneType zone = ZoneType.main,
    required bool enable,
  }) async =>
      Core.call(
        section: kZone,
        function: 'setBassExtension',
        parameters: {
          'zone': zone.str,
          'enable': enable.toString(),
        },
      );

  Future getSignalInfo({
    ZoneType zone = ZoneType.main,
  }) async =>
      Core.call(
        section: kZone,
        function: 'getSignalInfo',
        parameters: {
          'zone': zone.str,
        },
      );

  Future prepareInputChange({
    ZoneType zone = ZoneType.main,
    required String input,
  }) async =>
      Core.call(
        section: kZone,
        function: 'prepareInputChange',
        parameters: {
          'zone': zone.str,
          'input': input,
        },
      );

  Future recallScene({
    ZoneType zone = ZoneType.main,
    required int num,
  }) async =>
      Core.call(
        section: kZone,
        function: 'recallScene',
        parameters: {
          'zone': zone.str,
          'num': num.toString(),
        },
      );

  Future setContentsDisplay({
    ZoneType zone = ZoneType.main,
    required bool enable,
  }) async =>
      Core.call(
        section: kZone,
        function: 'setContentsDisplay',
        parameters: {
          'zone': zone.str,
          'enable': enable.toString(),
        },
      );

  Future controlCursor({
    ZoneType zone = ZoneType.main,
    required String cursor,
  }) async =>
      Core.call(
        section: kZone,
        function: 'controlCursor',
        parameters: {
          'zone': zone.str,
          'cursor': cursor,
        },
      );

  Future controlMenu({
    ZoneType zone = ZoneType.main,
    required String menu,
  }) async =>
      Core.call(
        section: kZone,
        function: 'controlMenu',
        parameters: {
          'zone': zone.str,
          'menu': menu,
        },
      );

  Future setActualVolume({
    ZoneType zone = ZoneType.main,
    required String mode,
    required double value,
  }) async =>
      Core.call(
        section: kZone,
        function: 'setActualVolume',
        parameters: {
          'zone': zone.str,
          'mode': mode,
          'value': value.toString(),
        },
      );

  Future setAudioSelect({
    ZoneType zone = ZoneType.main,
    required String type,
  }) async =>
      Core.call(
        section: kZone,
        function: 'setAudioSelect',
        parameters: {
          'zone': zone.str,
          'type': type,
        },
      );

  Future setSurroundDecoderType({
    ZoneType zone = ZoneType.main,
    required String type,
  }) async =>
      Core.call(
        section: kZone,
        function: 'setSurroundDecoderType',
        parameters: {
          'zone': zone.str,
          'type': type,
        },
      );

// Advanced
  Future setLinkControl({
    ZoneType zone = ZoneType.main,
    required String control,
  }) async =>
      Core.call(
        section: kZone,
        function: 'setLinkControl',
        parameters: {
          'zone': zone.str,
          'control': control,
        },
      );

  Future setLinkAudioDelay({
    ZoneType zone = ZoneType.main,
    required String delay,
  }) async =>
      Core.call(
        section: kZone,
        function: 'setLinkAudioDelay',
        parameters: {
          'zone': zone.str,
          'delay': delay,
        },
      );

  Future setLinkAudioQuality({
    ZoneType zone = ZoneType.main,
    required String mode,
  }) async =>
      Core.call(
        section: kZone,
        function: 'setLinkAudioQuality',
        parameters: {
          'zone': zone.str,
          'mode': mode,
        },
      );
}
