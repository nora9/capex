import 'package:capex/components/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    String dropdownValue;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff3d5a96),
        title: Text(
          'Capex',
        ),
      ),
      drawer: MyDrawer(),
      body: Container(
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.zero,
                  color: Color(0xff3d5a96),
                  height: MediaQuery.of(context).size.width * 0.05,
                ),
               Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: MediaQuery.of(context).size.height * 0.07,
                  child: Card(
                    color: Color(0xFFBFCD43),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      padding: EdgeInsets.only(left: 20 , right: 20),
                      child:DropdownButton<String>(
                        dropdownColor: Color(0xFFAECB83),
                        hint: Text(
                          'Select Business',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                        value: dropdownValue,
                        icon: const Icon(Icons.keyboard_arrow_down , color: Colors.white , size: 25,),
                        iconSize: 20,
                        isExpanded: true,
                        style: TextStyle(
                          fontSize: 20
                        ),
                        onChanged: (newValue) {
                          setState(() {
                            dropdownValue = newValue;
                            print(dropdownValue);
                          });
                        },
                        items: <String>['One', 'Two', 'Free', 'Four']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                                value,
                              style: TextStyle(
                                  color: Colors.white
                              ),
                            ),
                          );
                        }).toList(),
                      )
                    ),
                  ),
                ),
              )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
