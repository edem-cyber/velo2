import 'package:flutter/material.dart';
import 'package:velo2/widgets/global/scaffold.dart';

class HospitalsView extends StatefulWidget {
  @override
  _HospitalsViewState createState() => _HospitalsViewState();
}

class _HospitalsViewState extends State<HospitalsView> {
  @override
  Widget build(BuildContext context) {
    return myScaffold(context: context, title: 'Hospitals', child: Text('Hospitals'));
  }
}