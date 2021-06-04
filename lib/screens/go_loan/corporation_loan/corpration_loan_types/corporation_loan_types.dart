import 'package:capex/components/drawer.dart';
import 'package:flutter/material.dart';

class CorporationLoanTypes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff3d5a96),
        title: Text(
          'Corporation Loan Types',
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
                    '/CorpBankLoan',
                  );
                },
                child: _buildCard(Icons.money, 'Bank Loan')
            ),
            SizedBox(height: 15,),
            InkWell(
                onTap: (){
                  Navigator.pushReplacementNamed(
                    context,
                    '/CorpEquityInvestmentLoan',
                  );
                },
                child: _buildCard(Icons.attach_money, 'Equity Investment Loan')
            ),
            SizedBox(height: 15,),
            InkWell(
                onTap: (){
                  Navigator.pushReplacementNamed(
                    context,
                    '/CorpFactoringServiceLoan',
                  );
                },
                child: _buildCard(Icons.build, 'Factoring Service Loan')
            ),
            SizedBox(height: 15,),
            InkWell(
                onTap: (){
                  Navigator.pushReplacementNamed(
                    context,
                    '/CorpMortgageServiceLoan',
                  );
                },
                child: _buildCard(Icons.precision_manufacturing_outlined, 'Mortgage Service Loan')
            ),
            SizedBox(height: 15,),
            InkWell(
                onTap: (){
                  Navigator.pushReplacementNamed(
                    context,
                    '/CorpLeasingServiceLoan',
                  );
                },
                child: _buildCard(Icons.clean_hands, 'Leasing Service Loan')
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