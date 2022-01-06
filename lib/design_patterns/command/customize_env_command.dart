import 'package:flutter_design_patterns/design_patterns/command/i_command.dart';
import 'package:flutter_design_patterns/design_patterns/command/smart_home_entity.dart';

class CustomizeEnvCommand implements ICommand<SmartHomeEntity, bool> {
  @override
  Future<bool> execute(SmartHomeEntity entity) async {
    bool result = await entity.turnAirOn();
    result = await entity.turnHeatingOff();
    result = await entity.turnLightsOn();

    return result;
  }
}
