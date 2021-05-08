import 'package:flutter/material.dart';
import 'package:velo2/widgets/global/scaffold.dart';

class BookedView extends StatefulWidget {
  @override
  _BookedViewState createState() => _BookedViewState();
}

class _BookedViewState extends State<BookedView> {
  @override
  Widget build(BuildContext context) {
    return myScaffold(
      context: context, title: 'Booked', child: Text('Booked'),
    );
  }
}