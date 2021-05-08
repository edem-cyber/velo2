import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:velo2/models/place_model.dart';
import 'package:velo2/services/place_service.dart';
import 'package:velo2/widgets/global/scaffold.dart';
import 'package:velo2/widgets/listview/createContent.dart';

class DoctorsView extends StatefulWidget {
  @override
  _DoctorsViewState createState() => _DoctorsViewState();
}

class _DoctorsViewState extends State<DoctorsView> {
  Future<String>getLatLong() async {
    var geoposition = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    var latitudeData = '${geoposition.latitude}';
    var longitudeData = '${geoposition.longitude}';
    String locationData = latitudeData + ',' + longitudeData;
    return locationData;
  }
  @override
  Widget build(BuildContext context) {
    return myScaffold(
        context: context,
        title: 'Doctors',
        child: Center(
          child: Column(
            // children: [CircularProgressIndicator()],
            children: [Center(child: Text(getLatLong()))]
          ),
        ));
  }

  // List<Place> places;
  // @override
  // void initState() {
  //   super.initState();

  //   PlacesService.get().getNearbyPlaces().then((data) 
  //   {
  //     setState(() {
  //       // places = data;
  //     });
  //   });
  // }
}
