import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/adapter/application/application_service.dart';
import 'package:flutter_design_patterns/design_patterns/adapter/domain/entities/location.dart';
import 'package:flutter_design_patterns/design_patterns/adapter/domain/google_location_adapter.dart';
import 'package:flutter_design_patterns/design_patterns/adapter/domain/other_google_location_management.dart';

class GPSPositionPage extends StatefulWidget {
  const GPSPositionPage({Key? key}) : super(key: key);

  @override
  _GPSPositionPageState createState() => _GPSPositionPageState();
}

class _GPSPositionPageState extends State<GPSPositionPage> {
  ApplicationService service = ApplicationService(
      GoogleLocationAdapter(OtherGoogleLocationManagement()));
  MyLocation? location;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GPS')),
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Lat: ${location?.latitude}'),
                Text('Long: ${location?.longitude}'),
              ],
            ),
            ElevatedButton(
                onPressed: getLocation, child: Text('Obter localização'))
          ],
        ),
      ),
    );
  }

  Future<void> getLocation() async {
    location = await service.getUserLocation();
    setState(() {});
  }
}
