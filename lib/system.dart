part of yamaha_yxc;

// import 'constants.dart';
// import 'src/utilities.dart';

class System {
  Future getDeviceInfo() async => Core.call(
        section: kSystem,
        function: 'getDeviceInfo',
      );

  Future getFeatures() async => Core.call(
        section: kSystem,
        function: 'getFeatures',
      );

  Future getNetworkStatus() async => Core.call(
        section: kSystem,
        function: 'getNetworkStatus',
      );

  Future setWiredLan({
    String? dhcp,
    String? ipAddress,
    String? subnetMask,
    String? defaultGateway,
    String? dnsServer1,
    String? dnsServer2,
  }) async =>
      Core.call(
        section: kSystem,
        function: 'setWiredLan',
        parameters: {
          'dhcp': dhcp,
          'ip_address': ipAddress,
          'subnet_mask': subnetMask,
          'default_gateway': defaultGateway,
          'dns_server_1': dnsServer1,
          'dns_server_2': dnsServer2,
        },
      );

  Future setWirelessLan({
    String? ssid,
    WirelessEncryptionProtocol? type,
    String? key,
    String? dhcp,
    String? ipAddress,
    String? subnetMask,
    String? defaultGateway,
    String? dnsServer1,
    String? dnsServer2,
  }) async =>
      Core.call(
        section: kSystem,
        function: 'setWirelessLan',
        parameters: {
          'ssid': ssid,
          'type': (type != null) ? type.str : null,
          'key': key,
          'dhcp': dhcp,
          'ip_address': ipAddress,
          'subnet_mask': subnetMask,
          'default_gateway': defaultGateway,
          'dns_server_1': dnsServer1,
          'dns_server_2': dnsServer2,
        },
      );

  Future setWirelessDirect({
    String? type,
    String? key,
  }) async =>
      Core.call(
        section: kSystem,
        function: 'setWirelessDirect',
        parameters: {
          'type': type,
          'key': key,
        },
      );

  Future setIpSettings({
    String? dhcp,
    String? ipAddress,
    String? subnetMask,
    String? defaultGateway,
    String? dnsServer1,
    String? dnsServer2,
  }) async =>
      Core.call(
        section: kSystem,
        function: 'setIpSettings',
        parameters: {
          'dhcp': dhcp,
          'ip_address': ipAddress,
          'subnet_mask': subnetMask,
          'default_gateway': defaultGateway,
          'dns_server_1': dnsServer1,
          'dns_server_2': dnsServer2,
        },
      );

  Future setNetworkName({required String name}) async => Core.call(
        section: kSystem,
        function: 'setNetworkName',
        parameters: {
          'name': name,
        },
      );

  Future setAirplayPin({required String pin}) async => Core.call(
        section: kSystem,
        function: 'setAirplayPin',
        parameters: {
          'pin': pin,
        },
      );

  Future getMacAddressFilter() async => Core.call(
        section: kSystem,
        function: 'getMacAddressFilter',
      );

  Future setMacAddressFilter({
    bool? filter,
    String? address1,
    String? address2,
    String? address3,
    String? address4,
    String? address5,
    String? address6,
    String? address7,
    String? address8,
    String? address9,
    String? address10,
  }) async =>
      Core.call(
        section: kSystem,
        function: 'setMacAddressFilter',
        parameters: {
          'filter': Core.toStringOrNull(filter),
          'address_1': address1,
          'address_2': address2,
          'address_3': address3,
          'address_4': address4,
          'address_5': address5,
          'address_6': address6,
          'address_7': address7,
          'address_8': address8,
          'address_9': address9,
          'address_10': address10,
        },
      );

  Future getNetworkStandby() async => Core.call(
        section: kSystem,
        function: 'getNetworkStandby',
      );

  Future setNetworkStandby({required NetworkStandby standby}) async =>
      Core.call(
        section: kSystem,
        function: 'setNetworkStandby',
        parameters: {
          'standby': standby.str,
        },
      );

  Future getBluetoothInfo() async => Core.call(
        section: kSystem,
        function: 'getBluetoothInfo',
      );

  Future setBluetoothStandby({required String enable}) async => Core.call(
        section: kSystem,
        function: 'setBluetoothStandby',
        parameters: {'enable': enable},
      );

  Future setBluetoothTxSetting({required String enable}) async => Core.call(
        section: kSystem,
        function: 'setBluetoothTxSetting',
        parameters: {'enable': enable},
      );

  Future getBluetoothDeviceList() async => Core.call(
        section: kSystem,
        function: 'getBluetoothDeviceList',
      );

  Future updateBluetoothDeviceList() async => Core.call(
        section: kSystem,
        function: 'updateBluetoothDeviceList',
      );

  Future connectBluetoothDevice({required String address}) async => Core.call(
        section: kSystem,
        function: 'connectBluetoothDevice',
        parameters: {'address': address},
      );

  Future disconnectBluetoothDevice() async => Core.call(
        section: kSystem,
        function: 'disconnectBluetoothDevice',
      );

  Future getFuncStatus() async => Core.call(
        section: kSystem,
        function: 'getFuncStatus',
      );

  Future setAutoPowerStandby({required String enable}) async => Core.call(
        section: kSystem,
        function: 'setAutoPowerStandby',
        parameters: {'enable': enable},
      );

  Future setIrSensor({required String enable}) async => Core.call(
        section: kSystem,
        function: 'setIrSensor',
        parameters: {'enable': enable},
      );

  Future setSpeakerA({required String enable}) async => Core.call(
        section: kSystem,
        function: 'setSpeakerA',
        parameters: {'enable': enable},
      );

  Future setSpeakerB({required String enable}) async => Core.call(
        section: kSystem,
        function: 'setSpeakerB',
        parameters: {'enable': enable},
      );

  Future setDimmer(String value) async => Core.call(
        section: kSystem,
        function: 'setDimmer',
        parameters: {'value': value},
      );

  Future setZoneBVolumeSync({required String enable}) async => Core.call(
        section: kSystem,
        function: 'setZoneBVolumeSync',
        parameters: {'enable': enable},
      );

  Future setHdmiOut1({required String enable}) async => Core.call(
        section: kSystem,
        function: 'setHdmiOut1',
        parameters: {'enable': enable},
      );

  Future setHdmiOut2({required String enable}) async => Core.call(
        section: kSystem,
        function: 'setHdmiOut2',
        parameters: {'enable': enable},
      );

  Future getNameText({required String id}) async => Core.call(
        section: kSystem,
        function: 'getNameText',
        parameters: {'id': id},
      );

  Future setNameText({required String id, required String text}) async =>
      Core.call(
        section: kSystem,
        function: 'setNameText',
        parameters: {
          'id': id,
          'text': text,
        },
      );

  Future getLocationInfo() async => Core.call(
        section: kSystem,
        function: 'getLocationInfo',
      );

  Future sendIrCode({required String code}) async => Core.call(
        section: kSystem,
        function: 'sendIrCode',
        parameters: {'code': code},
      );
}
