import 'package:flutter/material.dart';

class HomeGoBusiness extends StatefulWidget {
  @override
  _HomeGoBusinessState createState() => _HomeGoBusinessState();
}

class _HomeGoBusinessState extends State<HomeGoBusiness> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, size: 20,),
          onPressed: (){
            Navigator.pushNamedAndRemoveUntil(context, '/BusinessSelection', (route) => false);
          },
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              InkWell(
                onTap: (){
                },
                child : _buildCard('assets/images/accounting.png','Accounting'),
              ),
              InkWell(
                onTap: (){
                },
                child : _buildCard('assets/images/hr.png','HR'),
              ),
              InkWell(
                onTap: (){
                },
                child : _buildCard('assets/images/ecommerce.png','E-Commerce'),
              ),
              InkWell(
                onTap: (){
                },
                child : _buildCard('assets/images/it.png','IT'),
              )
            ],
          ),
        ),

      ),
    );
  }
}

Widget _buildCard(String image , String text) {
  return Container(
    height: 150,
    width: double.infinity,
    margin: EdgeInsets.fromLTRB(5, 10, 5, 3),
    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
    child: Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Stack(
        children: [
          Positioned(
              top: 5,
              right: 20,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                width: 150,
                height: 120,
              )
          ),
          Positioned(
            top: 55,
            left: 25,
            child: Text(
              text,
              style: TextStyle(
                color: Color(0xff3d5a96),
                fontSize: 25,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
