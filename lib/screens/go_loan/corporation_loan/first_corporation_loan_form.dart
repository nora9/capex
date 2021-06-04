import 'package:capex/components/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstCorporationLoanForm extends StatefulWidget {
  @override
  _FirstCorporationLoanFormState createState() => _FirstCorporationLoanFormState();
}

class _FirstCorporationLoanFormState extends State<FirstCorporationLoanForm> {

  Widget _buildDropdownButtonFormField(String text , List<String> l){
    String dropdownValue;
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(15.0, 15.0, 10.0, 3.0),
          isDense: true,
          enabledBorder: UnderlineInputBorder( borderSide: BorderSide(color: Color(0xff8dbe5d), width: 1.0))
      ),
      dropdownColor: Color(0xFFB7B7C1),
      hint: Text(
        text,
        style: TextStyle(
            color: Color(0xff3d5a96),
            fontSize: 16
        ),
      ),
      value: dropdownValue,
      icon: const Icon(Icons.keyboard_arrow_down , color: Color(0xff3d5a96), size: 25,),
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
      items: l
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: TextStyle(
                color: Color(0xff3d5a96),
                fontSize: 16
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildTextFormField(String text , TextInputType type){
    return TextFormField(
      keyboardType: type,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
        isDense: true,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: Color(0xff8dbe5d),width: 0.8)),
        focusedBorder:OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xff8dbe5d), width: 0.8),
          //borderRadius: BorderRadius.circular(25.0),
        ),
        //labelText: text,
        //labelStyle: TextStyle(color: Color(0xff3d5a96) , fontSize: 16),
        filled: true,
        fillColor: Colors.white,
        focusColor: Color(0xff8dbe5d),
      ),
    );
  }

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff3d5a96),
        title: Text('Corporation Loan Form' ,style: TextStyle(color: Colors.white),),
      ),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushReplacementNamed(
            context,
            '/CorporationLoanTypes',
          );
        },
        backgroundColor: Color(0xff3d5a96),
        elevation: 3,
        child: Icon(
          Icons.near_me,
          color: Color(0xff8dbe5d),
        ),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.fromLTRB(30, 25, 30, 10),
        margin: EdgeInsets.only(bottom: 70),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              Text('Company Name*' , style: TextStyle(color: Color(0xff3d5a96), fontSize: 16),),
              _buildTextFormField('' , TextInputType.name ),
              SizedBox(height: 10,),
              Text('Commercial Register Number*' , style: TextStyle(color: Color(0xff3d5a96), fontSize: 16),),
              _buildTextFormField('' , TextInputType.number),
              SizedBox(height: 10,),
              Text('Tax Card Number*' , style: TextStyle(color: Color(0xff3d5a96), fontSize: 16),),
              _buildTextFormField('' , TextInputType.number),
              SizedBox(height: 10,),
              Text('Company Address*' , style: TextStyle(color: Color(0xff3d5a96), fontSize: 16),),
              _buildTextFormField('' , TextInputType.streetAddress),
              SizedBox(height: 10,),
              Text('Website' , style: TextStyle(color: Color(0xff3d5a96), fontSize: 16),),
              _buildTextFormField('' , TextInputType.url),
              SizedBox(height: 10,),
              _buildDropdownButtonFormField('Company Type' , [
                'Sole Proprietor' , 'Joint Stock' , 'Simple Partnership' , 'Limited Partnership',
                'NGO' , 'NPO']),
              SizedBox(height: 15,),
              _buildDropdownButtonFormField('Company Size' , [
                '1-9 employees' , '10-49 employees' , '50-99 employees', '100-499 employees',
                '500 employees or more']),
              SizedBox(height: 15,),
              _buildDropdownButtonFormField('Business Industry' , [
                'Sole Proprietor' , 'Joint Stock' , 'Simple Partnership' , 'Limited Partnership',
                'NGO' , 'NPO']),
              SizedBox(height: 20,),
              Text('Contact Person Details :' , style: TextStyle(color: Color(0xff3d5a96), fontSize: 16),),
              SizedBox(height: 10,),
              Container(
                  padding: EdgeInsets.only(left: 40),
                  child: Text('Name*' , style: TextStyle(color: Color(0xff3d5a96), fontSize: 16),)),
              Container(
               padding: EdgeInsets.only(left: 40),
               child:_buildTextFormField('' , TextInputType.text),
             ),
              SizedBox(height: 8,),
              Container(
                  padding: EdgeInsets.only(left: 40),
                  child: Text('Title*' , style: TextStyle(color: Color(0xff3d5a96), fontSize: 16),)),
              Container(
                padding: EdgeInsets.only(left: 40),
                child:_buildTextFormField('' , TextInputType.text),
              ),
              SizedBox(height: 8,),
              Container(
                  padding: EdgeInsets.only(left: 40),
                  child: Text('phone*' , style: TextStyle(color: Color(0xff3d5a96), fontSize: 16),)),
              Container(
                padding: EdgeInsets.only(left: 40),
                child:_buildTextFormField('' , TextInputType.text),
              ),
              SizedBox(height: 8,),
              Container(
                  padding: EdgeInsets.only(left: 40),
                  child: Text('Mobile*' , style: TextStyle(color: Color(0xff3d5a96), fontSize: 16),)),
              Container(
                padding: EdgeInsets.only(left: 40),
                child:_buildTextFormField('' , TextInputType.text),
              ),
              SizedBox(height: 8,),
              Container(
                  padding: EdgeInsets.only(left: 40),
                  child: Text('Email Address*' , style: TextStyle(color: Color(0xff3d5a96), fontSize: 16),)),
              Container(
                padding: EdgeInsets.only(left: 40),
                child:_buildTextFormField('' , TextInputType.text),
              ),
              SizedBox(height: 8,),
              Container(
                  padding: EdgeInsets.only(left: 40),
                  child: Text('Nationality*' , style: TextStyle(color: Color(0xff3d5a96), fontSize: 16),)),
              Container(
                padding: EdgeInsets.only(left: 40),
                child:_buildTextFormField('' , TextInputType.text),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
