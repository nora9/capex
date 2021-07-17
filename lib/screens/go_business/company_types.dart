import 'package:capex/components/drawer.dart';
import 'package:flutter/material.dart';

class CompanyType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text(
          'Company Types',
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
                    '/BusinessSelection',
                  );
                },
                child: _buildCard(Icons.person, 'Individual')
            ),
            SizedBox(height: 15,),
            InkWell(
                onTap: (){
                  Navigator.pushReplacementNamed(
                    context,
                    '/BusinessSelection',
                  );
                },
                child: _buildCard(Icons.star_border, 'Simple')
            ),
            SizedBox(height: 15,),
            InkWell(
                onTap: (){
                  Navigator.pushReplacementNamed(
                    context,
                    '/BusinessSelection',
                  );
                },
                child: _buildCard(Icons.wc, 'Limited Partnership')
            ),
            SizedBox(height: 15,),
            InkWell(
                onTap: (){
                  Navigator.pushReplacementNamed(
                    context,
                    '/BusinessSelection',
                  );
                },
                child: _buildCard(Icons.storage, 'Joint Stock Company')
            ),
            SizedBox(height: 15,),
            InkWell(
                onTap: (){
                  Navigator.pushReplacementNamed(
                    context,
                    '/BusinessSelection',
                  );
                },
                child: _buildCard(Icons.storage_sharp, 'Limited Joint Stock Company')
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