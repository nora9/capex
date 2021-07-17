import 'package:capex/components/drawer.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      drawer: MyDrawer(),
      body: ListView(
        children: [
          ListTile(
            title: Text(
              'Dark Mode' ,
              style: TextStyle(color:Color(0xff3d5a96),fontSize:18),
            ),
            leading: Icon(Icons.nightlight_round , color: Color(0xff8dbe5d),),
            trailing: Icon(Icons.brightness_4_outlined , color: Color(0xff8dbe5d),)
          )
        ],
      ),
    );
  }
}
