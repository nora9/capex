import 'package:capex/components/drawer.dart';
import 'package:flutter/material.dart';

class IndividualLoanTypes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff3d5a96),
        title: Text(
          'Individual Loan Types',
        ),
      ),
      body: Container(
        child: ListView(
          padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
          children: [
            InkWell(
              onTap: (){
                Navigator.pushReplacementNamed(
                  context,
                  '/IndEducationLoan',
                );
              },
              child: _buildCard(Icons.cast_for_education, 'Education Loan')
            ),
            SizedBox(height: 15,),
            InkWell(
                onTap: (){
                  Navigator.pushReplacementNamed(
                    context,
                    '/IndHouseholdLoan',
                  );
                },
                child: _buildCard(Icons.electrical_services, 'Household Appliance Loan')
            ),
            SizedBox(height: 15,),
            InkWell(
                onTap: (){
                  Navigator.pushReplacementNamed(
                    context,
                    '/IndAutoLoan',
                  );
                },
                child: _buildCard(Icons.car_rental, 'Auto Loan')
            ),
            SizedBox(height: 15,),
            InkWell(
                onTap: (){
                  Navigator.pushReplacementNamed(
                    context,
                    '/IndPersonalLoan',
                  );
                },
                child: _buildCard(Icons.person, 'Personal Loan')
            ),
            SizedBox(height: 15,),
            InkWell(
                onTap: (){
                  Navigator.pushReplacementNamed(
                    context,
                    '/IndRealEstateLoan',
                  );
                },
                child: _buildCard(Icons.home_work_rounded, 'Real Estate Loan')
            ),
            SizedBox(height: 15,),
            InkWell(
                onTap: (){
                  Navigator.pushReplacementNamed(
                    context,
                    '/IndSolarPowerLoan',
                  );
                },
                child: _buildCard(Icons.power_rounded, 'Solar Power Loan')
            ),
            SizedBox(height: 15,),
            InkWell(
                onTap: (){
                  Navigator.pushReplacementNamed(
                    context,
                    '/IndTravellingLoan',
                  );
                },
                child: _buildCard(Icons.card_travel, 'Travelling Loan')
            ),
          ],
        ),
      ),
    );
  }
}



Widget _buildCard(IconData _leading , String _title ) {
  return Card(
    elevation: 3,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    ),
    child: ListTile(
      leading: Icon(_leading,size: 35,color: Color(0xff8dbe5d),),
      title: Text(_title,style: TextStyle(color: Color(0xff3d5a96), fontSize: 20),),
      trailing: Icon(Icons.navigate_next,size: 35,color: Color(0xff8dbe5d),),
    ),
  );
}


