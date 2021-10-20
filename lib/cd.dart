part of yamaha_yxc;

// import 'package:yamaha_yxc/yamaha_yxc.dart';
//
// import 'constants.dart';
// import 'src/utilities.dart';

class CD {
  Future getPlayInfo() async => Core.call(
        section: kCD,
        function: 'getPlayInfo',
      );

  Future setPlayback({
    required String? playback,
    int? num,
  }) async {
    return Core.call(
      section: kCD,
      function: 'setPlayback',
      parameters: {
        'playback': playback,
        'num': Core.toStringOrNull(num),
      },
    );
  }

  Future toggleTray() async => Core.call(
        section: kCD,
        function: 'toggleTray',
      );

  Future setRepeat({required String mode}) async => Core.call(
        section: kCD,
        function: 'setRepeat',
        parameters: {
          'mode': mode,
        },
      );

  Future setShuffle({required String mode}) async => Core.call(
        section: kCD,
        function: 'setShuffle',
        parameters: {
          'mode': mode,
        },
      );

  Future toggleRepeat() async => Core.call(
        section: kCD,
        function: 'toggleRepeat',
      );

  Future toggleShuffle() async => Core.call(
        section: kCD,
        function: 'toggleShuffle',
      );
}
