part of yamaha_yxc;

const String kSystem = 'system';
const String kNetwork = 'netusb';
const String kZone = 'main';
const String kTuner = 'tuner';
const String kCD = 'cd';
const String kClock = 'clock';
const String kDistribution = 'dist';
const int kPort = 80;

enum WirelessEncryptionProtocol { none, wep, wpa2, mixed }

extension WirelessEncryptionProtocolStr on WirelessEncryptionProtocol {
  String get str {
    switch (this) {
      case WirelessEncryptionProtocol.none:
        return 'none';
      case WirelessEncryptionProtocol.wep:
        return 'wep';
      case WirelessEncryptionProtocol.wpa2:
        return 'wpa2-psk(aes)';
      case WirelessEncryptionProtocol.mixed:
        return 'mixed_mode';
    }
  }
}

enum ZoneType { main, zone2, zone3, zone4 }

extension ZoneTypeStr on ZoneType {
  String get str {
    return this.toString().split('.').last;
  }
}

enum NetworkStandby { on, off, auto }

extension NetworkStandbyStr on NetworkStandby {
  String get str {
    return this.toString().split('.').last;
  }
}

enum PowerStatus { on, standby, toggle }

extension PowerStatusStr on PowerStatus {
  String get str {
    return this.toString().split('.').last;
  }
}

class VolumeType {
  static String up = 'up';
  static String down = 'down';
  static String value(int val) => value.toString();
}

enum PresetBand { common, am, fm, dab }

extension PresetBandStr on PresetBand {
  String get str {
    return this.toString().split('.').last;
  }
}

enum TunerBand { am, fm, dab }

extension TunerBandStr on TunerBand {
  String get str {
    return this.toString().split('.').last;
  }
}

enum FreqBand { am, fm }

extension FreqBandStr on FreqBand {
  String get str {
    return this.toString().split('.').last;
  }
}

enum PresetDir { next, previous }

extension PresetDirStr on PresetDir {
  String get str {
    return this.toString().split('.').last;
  }
}

enum DabTuneAid { start, stop, up, down }

extension DabTuneAidStr on DabTuneAid {
  String get str {
    return this.toString().split('.').last;
  }
}

enum PlaybackStatus {
  play,
  stop,
  pause,
  play_pause,
  previous,
  next,
  fast_reverse_start,
  fast_reverse_end,
  fast_forward_start,
  fast_forward_end,
}

extension PlaybackStatusStr on PlaybackStatus {
  String get str {
    return this.toString().split('.').last;
  }
}

enum ListControl { select, play, ret }

extension ListControlStr on ListControl {
  String get str {
    switch (this) {
      case ListControl.select:
        return 'select';
      case ListControl.play:
        return 'play';
      case ListControl.ret:
        return 'return';
    }
  }
}

enum RepeatMode { off, one, all }

extension RepeatModeStr on RepeatMode {
  String get str {
    return this.toString().split('.').last;
  }
}

enum ShuffleMode { off, on, songs, albums }

extension ShuffleModeStr on ShuffleMode {
  String get str {
    return this.toString().split('.').last;
  }
}

enum ManageClient { add, remove }

extension ManageClientStr on ManageClient {
  String get str {
    return this.toString().split('.').last;
  }
}

const Map kResponseCode = {
  0: 'Successful request',
  1: 'Initializing',
  2: 'Internal Error',
  3: 'Invalid Request (A method did not exist, a method was not appropriate etc.)',
  4: 'Invalid Parameter (Out of range, invalid characters etc.)',
  5: 'Guarded (Unable to setup in current status etc.)',
  6: 'Time Out',
  99: 'Firmware Updating',
  100: 'Access Error',
  101: 'Other Errors',
  102: 'Wrong User Name',
  103: 'Wrong Password',
  104: 'Account Expired',
  105: 'Account Disconnected/Gone Off/Shut Down',
  106: 'Account Number Reached to the Limit',
  107: 'Server Maintenance',
  108: 'Invalid Account',
  109: 'License Error',
  110: 'Read Only Mode',
  111: 'Max Stations',
  112: 'Access Denied',
  113: 'There is a need to specify the additional destination Playlist',
  114: 'There is a need to create a new Playlist',
  115: 'Simultaneous logins has reached the upper limit',
  200: 'Linking in progress',
  201: 'Unlinking in progress',
};
