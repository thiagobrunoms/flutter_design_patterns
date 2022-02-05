import 'package:flutter_design_patterns/design_patterns/command/i_command.dart';
import 'package:flutter_design_patterns/design_patterns/command/smart_home_entity.dart';

class TurnOnAllCommand implements ICommand<SmartHomeEntity, bool> {
  @override
  Future<bool?> execute({SmartHomeEntity? param}) async {
    bool? result = await param?.turnAirOn();
    result = await param?.turnHeatingOff();
    result = await param?.turnLightsOn();

    return result;
  }
}
