import 'package:capex/components/drawer.dart';
import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
