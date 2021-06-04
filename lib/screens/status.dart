import 'package:capex/components/drawer.dart';
import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff3d5a96),
        title: Text(
          'Status',
        ),
      ),
      drawer: MyDrawer(),
      body: Container(
      ),
    );
  }
}
