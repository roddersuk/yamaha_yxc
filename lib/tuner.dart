part of yamaha_yxc;
// import 'constants.dart';
// import 'src/utilities.dart';

class Tuner {
  Future getPresetInfo({
    required PresetBand band,
  }) async =>
      Core.call(
        section: kTuner,
        function: 'getPresetInfo',
        parameters: {
          'band': band.str,
        },
      );

  Future getPlayInfo() async => Core.call(
        section: kTuner,
        function: 'getPlayInfo',
      );

  Future setBand({
    required TunerBand band,
  }) async =>
      Core.call(
        section: kTuner,
        function: 'setBand',
        parameters: {
          'band': band.str,
        },
      );

  Future setFreq({
    required FreqBand band,
    required String tuning,
    int? num,
  }) async =>
      Core.call(
        section: kTuner,
        function: 'setFreq',
        parameters: {
          'band': band.str,
          'tuning': tuning,
          'num': Core.toStringOrNull(num),
        },
      );

  Future recallPreset({
    required ZoneType zone,
    required PresetBand band,
    int? num,
  }) async =>
      Core.call(section: kTuner, function: 'recallPreset', parameters: {
        'zone': zone.str,
        'band': band.str,
        'num': Core.toStringOrNull(num),
      });

  Future switchPreset({
    required PresetDir dir,
  }) async =>
      Core.call(
        section: kTuner,
        function: 'switchPreset',
        parameters: {
          'dir': dir.str,
        },
      );

  Future storePreset({
    required int num,
  }) async =>
      Core.call(
        section: kTuner,
        function: 'storePreset',
        parameters: {
          'num': Core.toStringOrNull(num),
        },
      );

  Future clearPreset({
    required PresetBand band,
    required int num,
  }) async =>
      Core.call(
        section: kTuner,
        function: 'clearPreset',
        parameters: {
          'band': band.str,
          'num': Core.toStringOrNull(num),
        },
      );

  Future startAutoPreset() async => Core.call(
        section: kTuner,
        function: 'startAutoPreset',
        parameters: {
          'band': 'fm',
        },
      );

  Future cancelAutoPreset() async => Core.call(
        section: kTuner,
        function: 'cancelAutoPreset',
        parameters: {
          'band': 'fm',
        },
      );

  Future movePreset({
    required PresetBand band,
    required int from,
    required int to,
  }) async =>
      Core.call(
        section: kTuner,
        function: 'movePreset',
        parameters: {
          'band': band.str,
          'from': Core.toStringOrNull(from),
          'to': Core.toStringOrNull(to),
        },
      );

  Future startDabInitialScan() async => Core.call(
        section: kTuner,
        function: 'startDabInitialScan',
      );

  Future cancelDabInitialScan() async => Core.call(
        section: kTuner,
        function: 'cancelDabInitialScan',
      );

  Future setDabTuneAid({required DabTuneAid action}) async => Core.call(
        section: kTuner,
        function: 'setDabTuneAid',
        parameters: {
          'action': action.str,
        },
      );

  Future setDabService({required PresetDir dir}) async => Core.call(
        section: kTuner,
        function: 'setDabService',
        parameters: {
          'dir': dir.str,
        },
      );
}
