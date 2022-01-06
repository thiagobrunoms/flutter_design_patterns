class SmartHomeEntity {
  Future<bool> turnLightsOn() async {
    return await Future.value(true);
  }

  Future<bool> turnAirOn() async {
    return await Future.value(true);
  }

  Future<bool> turnHeatingOff() async {
    return await Future.value(true);
  }
}
