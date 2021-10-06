import 'constants.dart';
import 'src/utilities.dart';

class Distribution {
  Future getDistributionInfo() async => Core.call(
        section: kDistribution,
        function: 'getDistributionInfo',
      );

  // TODO: POST!
  Future setServerInfo({
    required String groupId,
    ZoneType? zone,
    ManageClient? type,
    List<String> clientList = const [],
  }) async =>
      Core.call(
        section: kDistribution,
        function: 'setServerInfo',
        parameters: {
          'group_id': groupId,
          'zone': (zone != null) ? zone.str : null,
          'type': (type != null) ? type.str : null,
          'client_list': clientList.toString(),
        },
      );

  // TODO: POST
  Future setClientInfo({
    required String groupId,
    List<String> zone = const [],
    String? serverIpAddress,
  }) async =>
      Core.call(
        section: kDistribution,
        function: 'setClientInfo',
        parameters: {
          'group_id': groupId,
          'zone': zone.toString(),
          'server_ip_address': serverIpAddress,
        },
      );

  Future startDistribution({
    required int num,
  }) async =>
      Core.call(
        section: kDistribution,
        function: 'startDistribution',
        parameters: {
          'num': num.toString(),
        },
      );

  Future stopDistribution() async => Core.call(
        section: kDistribution,
        function: 'stopDistribution',
      );

  Future setGroupName({
    required String name,
  }) async =>
      Core.call(
        section: kDistribution,
        function: 'startDistribution',
        parameters: {'name': name},
      );
}
