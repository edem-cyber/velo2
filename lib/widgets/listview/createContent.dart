import 'package:flutter/material.dart';
import 'package:velo2/services/place_service.dart';

Widget createContent() {
  if (PlacesService().places == null) {
    return Center(
      child: CircularProgressIndicator(),
    );
  } else {
    return ListView(
      itemExtent: 20,
      children: PlacesService().places.map((f) {
        return Center(child: CircularProgressIndicator());
        // return ListTile(
        //   title: Text(f.name),
        //   leading: Image.network(f.icon),
        //   subtitle: Text(f.vicinity),
        // );
      }).toList(),
    );
  }
}
