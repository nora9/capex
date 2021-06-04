import 'package:flutter/material.dart';

class CorpEquityInvestmentLoan extends StatefulWidget {
  @override
  _CorpEquityInvestmentLoanState createState() => _CorpEquityInvestmentLoanState();
}

class _CorpEquityInvestmentLoanState extends State<CorpEquityInvestmentLoan> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff3d5a96),
        title: Text('CorpEquityInvestmentLoan'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, size: 20,),
          onPressed: (){
            Navigator.pushNamedAndRemoveUntil(context, '/CorporationLoanTypes', (route) => false);
          },
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
              Text('Loan Type*' , style: TextStyle(color: Color(0xff3d5a96), fontSize: 16),),
              _buildTextFormField('Equity Investment Loan' , TextInputType.name , true),
              SizedBox(height: 10,),
              Text('Loan Amount*' , style: TextStyle(color: Color(0xff3d5a96), fontSize: 16),),
              _buildTextFormField('' , TextInputType.number , false),
              SizedBox(height: 10,),
              _buildDropdownButtonFormField('Currency*' , ['EGP', 'USD' , 'EUR']),
              SizedBox(height: 15,),
              _buildDropdownButtonFormField('Method Of Payment*' , ['Monthly', 'Quarterly' , 'Semi-annually' , 'Annually']),
              SizedBox(height: 15,),
              _buildDropdownButtonFormField('Number of Years*' , ['1', '2' , '3' , '4' , '5' , '6' , '7']),
              SizedBox(height: 15,),
              Text('Sales Revenue*' , style: TextStyle(color: Color(0xff3d5a96), fontSize: 16),),
              _buildTextFormField('' , TextInputType.number , false),
              SizedBox(height: 10,),
              Text('Net Profit*' , style: TextStyle(color: Color(0xff3d5a96), fontSize: 16),),
              _buildTextFormField('' , TextInputType.number , false),
              SizedBox(height: 10,),
              _buildDropdownButtonFormField('Equity Investment Loan Program*' , [
                'Mezzanine Fiance', 'Convertible Loan' , 'Acquisition' , 'Merge' , 'Joint Venture']),
              SizedBox(height: 20,),
              Text('Calculator Primitive Price :' , style: TextStyle(color: Color(0xff3d5a96), fontSize: 16),),
              SizedBox(height: 10,),
              Container(
                  padding: EdgeInsets.only(left: 40),
                  child: Text('Monthly income*' , style: TextStyle(color: Color(0xff3d5a96), fontSize: 16),)),
              Container(
                padding: EdgeInsets.only(left: 40),
                child:_buildTextFormField('' , TextInputType.number , false),
              ),
              SizedBox(height: 8,),
              Container(
                  padding: EdgeInsets.only(left: 40),
                  child: Text('Total amount*' , style: TextStyle(color: Color(0xff3d5a96), fontSize: 16),)),
              Container(
                padding: EdgeInsets.only(left: 40),
                child:_buildTextFormField('' , TextInputType.number , false),
              ),
              SizedBox(height: 8,),
              Container(
                  padding: EdgeInsets.only(left: 40),
                  child: Text('Number of years*' , style: TextStyle(color: Color(0xff3d5a96), fontSize: 16),)),
              Container(
                padding: EdgeInsets.only(left: 40),
                child:_buildTextFormField('' , TextInputType.number , false),
              ),

            ],
          ),
        ),
      ),
    );
  }
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

  Widget _buildTextFormField(String text , TextInputType type , bool _readOnly){
    return TextFormField(
      keyboardType: type,
      readOnly: _readOnly,
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
        labelText: text,
        labelStyle: TextStyle(color: Colors.black , fontSize: 16),
        filled: true,
        fillColor: Colors.white,
        focusColor: Color(0xff8dbe5d),
      ),
    );
  }
}
