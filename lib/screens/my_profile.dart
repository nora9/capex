import 'package:capex/components/drawer.dart';
import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Profile',
        ),
      ),
      drawer: MyDrawer(),
      body: Container(
      ),

    );
  }
}
