import 'package:flutter/material.dart';
import 'package:velo2/widgets/global/scaffold.dart';

class PharmaciesView extends StatefulWidget {
  @override
  _PharmaciesViewState createState() => _PharmaciesViewState();
}

class _PharmaciesViewState extends State<PharmaciesView> {
  @override
  Widget build(BuildContext context) {
    return myScaffold(context: context, title: 'Pharmacies', child: Text('Pharmacies'));
  }
}
