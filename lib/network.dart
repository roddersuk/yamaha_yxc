import 'dart:math';

import 'constants.dart';
import 'src/utilities.dart';

class Network {
  Future getPresetInfo() async => Core.call(
        section: kNetwork,
        function: 'getPresetInfo',
      );

  Future getPlayInfo() async => Core.call(
        section: kNetwork,
        function: 'getPlayInfo',
      );

  Future setPlayback({required PlaybackStatus playback}) async => Core.call(
        section: kNetwork,
        function: 'setPlayback',
        parameters: {
          'playback': playback.str,
        },
      );

  Future setPlayPosition({required int position}) async => Core.call(
        section: kNetwork,
        function: 'setPlayPosition',
        parameters: {
          'position': position.toString(),
        },
      );

  Future setRepeat({
    required RepeatMode mode,
  }) async =>
      Core.call(
        section: kNetwork,
        function: 'setRepeat',
        parameters: {
          'mode': mode.str,
        },
      );

  Future setShuffle({
    required ShuffleMode mode,
  }) async =>
      Core.call(
        section: kNetwork,
        function: 'setShuffle',
        parameters: {
          'mode': mode.str,
        },
      );

  Future toggleRepeat() async => Core.call(
        section: kNetwork,
        function: 'toggleRepeat',
      );

  Future toggleShuffle() async => Core.call(
        section: kNetwork,
        function: 'toggleShuffle',
      );

  Future getListInfo({
    required String input,
    String? listId,
    int? index,
    required int size,
    String? lang,
  }) async =>
      Core.call(
        section: kNetwork,
        function: 'getListInfo',
        parameters: {
          'input': input,
          'list_id': listId,
          'index': Core.toStringOrNull(index),
          'size': max(1, min(size, 8)).toString(),
          'lang': lang,
        },
      );

  Future setListControl({
    required ListControl type,
    String? listId,
    int? index,
    ZoneType? zone,
  }) async =>
      Core.call(
        section: kNetwork,
        function: 'setListControl',
        parameters: {
          'type': type.str,
          'list_id': listId,
          'index': Core.toStringOrNull(index),
          'zone': (zone != null) ? zone.str : null,
        },
      );

  Future setSearchString({
    required String string,
    String? listId,
    int? index,
  }) async =>
      Core.call(
        section: kNetwork,
        function: 'setSearchString',
        parameters: {
          'string': string,
          'list_id': listId,
          'index': Core.toStringOrNull(index),
        },
      );

  Future recallPreset({
    required ZoneType zone,
    required int num,
  }) async =>
      Core.call(
        section: kNetwork,
        function: 'recallPreset',
        parameters: {
          'zone': zone.str,
          'num': Core.toStringOrNull(num),
        },
      );

  Future storePreset({
    required int num,
  }) async =>
      Core.call(
        section: kNetwork,
        function: 'storePreset',
        parameters: {
          'num': Core.toStringOrNull(num),
        },
      );

  Future clearPreset({
    required int num,
  }) async =>
      Core.call(
        section: kNetwork,
        function: 'clearPreset',
        parameters: {
          'num': Core.toStringOrNull(num),
        },
      );

  Future movePreset({
    required int from,
    required int to,
  }) async =>
      Core.call(
        section: kNetwork,
        function: 'movePreset',
        parameters: {
          'from': Core.toStringOrNull(from),
          'to': Core.toStringOrNull(to)
        },
      );

  Future getSettings() async => Core.call(
        section: kNetwork,
        function: 'getSettings',
      );

  Future setQuality({
    required String input,
    required String value,
  }) async =>
      Core.call(
        section: kNetwork,
        function: 'setQuality',
        parameters: {
          'input': input,
          'value': value,
        },
      );

  Future getRecentInfo() => Core.call(
        section: kNetwork,
        function: 'getRecentInfo',
      );

  Future recallRecentItem({
    required ZoneType zone,
    required int num,
  }) async =>
      Core.call(
        section: kNetwork,
        function: 'recallRecentItem',
        parameters: {
          'zone': zone.str,
          'num': Core.toStringOrNull(num),
        },
      );

  Future clearRecentInfo() => Core.call(
        section: kNetwork,
        function: 'clearRecentInfo',
      );

  Future managePlay({
    required String type,
    required int timeout,
    int? bank,
  }) async =>
      Core.call(
        section: kNetwork,
        function: 'managePlay',
        parameters: {
          'type': type,
          'timeout': timeout.toString(),
          'bank': Core.toStringOrNull(bank),
        },
      );

  Future manageList({
    required String type,
    required int timeout,
    String? listId,
    int? index,
    ZoneType? zone,
    int? bank,
  }) async =>
      Core.call(
        section: kNetwork,
        function: 'manageList',
        parameters: {
          'type': type,
          'timeout': Core.toStringOrNull(timeout),
          'list_id': listId,
          'index': Core.toStringOrNull(index),
          'zone': (zone != null) ? zone.str : null,
          'bank': Core.toStringOrNull(bank),
        },
      );

  Future getPlayDescription({
    required String type,
    required int timeout,
  }) async =>
      Core.call(
        section: kNetwork,
        function: 'getPlayDescription',
        parameters: {
          'type': type,
          'timeout': timeout.toString(),
        },
      );

  Future setListSortOption({
    required String input,
    required String type,
  }) async =>
      Core.call(
        section: kNetwork,
        function: 'setListSortOption',
        parameters: {
          'input': input,
          'type': type,
        },
      );

  Future getAccountStatus() async => Core.call(
        section: kNetwork,
        function: 'getAccountStatus',
      );

  Future getServiceInfo({
    required String input,
    required String type,
    required int timeout,
  }) async =>
      Core.call(
        section: kNetwork,
        function: 'getServiceInfo',
        parameters: {
          'input': input,
          'type': type,
          'timeout': Core.toStringOrNull(timeout),
        },
      );

  // Undocumented functions

  Future getPlayQueue({
    required String input,
    String? type,
    int? index,
    int? size,
  }) async =>
      Core.call(
        section: kNetwork,
        function: 'getPlayQueue',
        parameters: {
          'input': input,
          'type': type,
          'index': Core.toStringOrNull(index),
          'size': Core.toStringOrNull(size),
        },
      );

  // Get playlist numbered from 1 - no size limit - gets whole list
  Future getMcPlaylist({
    required int bank, // playlist number
    required int index, // selects first track in playlist
  }) async =>
      Core.call(section: kNetwork, function: 'getMcPlaylist', parameters: {
        'bank': bank.toString(),
        'index': index.toString(),
      });

  // Get list of playlists numbered from 0
  Future getMcPlaylistName() async => Core.call(
        section: kNetwork,
        function: 'getMcPlaylistName',
      );

  Future manageMcPlaylist({
    required int bank,
    required String type,
    required int index,
    ZoneType? zone,
  }) async =>
      Core.call(section: kNetwork, function: 'manageMcPlaylist', parameters: {
        'bank': bank.toString(),
        'type': type,
        'index': index.toString(),
        'zone': (zone != null) ? zone.str : null,
      });

  // TODO: Not working
  Future clearPlayQueue() async => Core.call(
        section: kNetwork,
        function: 'clearPlayQueue',
      );
}
