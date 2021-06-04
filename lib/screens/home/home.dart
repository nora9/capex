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
          'Home',
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
                    color: Color(0xff8dbe5d),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      padding: EdgeInsets.only(left: 20 , right: 20),
                      child:DropdownButtonFormField<String>(
                        dropdownColor: Color(0xff8dbe5d),
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
                            if(dropdownValue == 'Business Loan'){
                              Navigator.pushReplacementNamed(
                                context,
                                '/GoLoan',
                              );
                            }
                            else{
                              Navigator.pushReplacementNamed(
                                context,
                                '/CompanyType',
                              );
                            }
                            print(dropdownValue);
                          });
                        },
                        items: <String>['Business Service', 'Business Loan']
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


          /*  Container(
              padding: EdgeInsets.only(top: 40),
              child: GridView.count(
                crossAxisCount: 3,
                primary: false,
                crossAxisSpacing: 2.0,
                mainAxisSpacing: 4.0,
                shrinkWrap: true,
                children: [
                  InkWell(
                    child: _buildColumn('assets/images/new_loan.png', 'New Loan'),
                    onTap: (){
                      Navigator.pushReplacementNamed(
                        context,
                        '/NewLoan',
                      );
                    },
                  ),
                  InkWell(
                    child: _buildColumn('assets/images/report.png', 'Status'),
                    onTap: (){
                      Navigator.pushReplacementNamed(
                        context,
                        '/Status',
                      );
                    },
                  ),
                  InkWell(
                    child: _buildColumn('assets/images/my_profile.png', 'My Profile'),
                    onTap: (){
                      Navigator.pushReplacementNamed(
                        context,
                        '/MyProfile',
                      );
                    },
                  ),
                 // _buildColumn('assets/images/settings.png', 'Settings'),
                 // _buildColumn('assets/images/report.png', 'Reports'),
                 // _buildColumn('assets/images/license.png', 'License'),
                ],

              ),
            ),*/
          ],
        ),
      ),
    );
  }
}



