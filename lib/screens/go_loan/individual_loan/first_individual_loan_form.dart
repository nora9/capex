import 'package:capex/components/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_conditional_rendering/flutter_conditional_rendering.dart';

class FirstIndividualLoanForm extends StatefulWidget {
  @override
  _FirstIndividualLoanFormState createState() => _FirstIndividualLoanFormState();
}

class _FirstIndividualLoanFormState extends State<FirstIndividualLoanForm> {

  bool flag = false;

  DateTime pickedDateIssuing;
  DateTime pickedDateExpiry;
  DateTime pickedDateOfBirth;

  @override
  void initState() {
    super.initState();
    pickedDateIssuing = DateTime.now();
    pickedDateExpiry = DateTime.now();
    pickedDateOfBirth = DateTime.now();
  }

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff3d5a96),
        title: Text('Individual Loan Form' ,style: TextStyle(color: Colors.white),),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushReplacementNamed(
            context,
            '/IndividualLoanTypes',
          );
        },
        backgroundColor: Color(0xff3d5a96),
        elevation: 3,
        child: Icon(
          Icons.near_me,
          color: Color(0xff8dbe5d),
        ),
      ),
      drawer: MyDrawer(),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.fromLTRB(30, 25, 30, 10),
        margin: EdgeInsets.only(bottom: 70),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              Text('Full Name' , style: TextStyle(color: Color(0xff3d5a96), fontSize: 16),),
              _buildTextFormField(' ' , TextInputType.name , false),
              SizedBox(height: 10,),
              _buildDropdownButtonFormField('Gender*' , ['Male', 'Female']),
              SizedBox(height: 15,),
              _buildDropdownButtonFormField('Nationality*' , ['?', '?']),
              SizedBox(height: 15,),
              Text('Nationality Id*' , style: TextStyle(color: Color(0xff3d5a96), fontSize: 16),),
              _buildTextFormField('' , TextInputType.number , false),
              SizedBox(height: 10,),
              Text('Issuing Date*' , style: TextStyle(color: Color(0xff3d5a96), fontSize: 16),),
              Container(
               // padding: const EdgeInsets.all(5.0),
                height: 60,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff8dbe5d)),
                    borderRadius: BorderRadius.circular(5),
                ),
                child: ListTile(
                  title: Text(
                    "${pickedDateIssuing.year} , ${pickedDateIssuing.month} , ${pickedDateIssuing.day}",
                    style: TextStyle(
                      color: Color(0xff3d5a96),
                      fontSize: 16,
                    ),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_down , color: Colors.white,),
                  onTap: _pickDateIssuing,
                ),
              ),
              SizedBox(height: 10,),
              Text('Expiry Date*' , style: TextStyle(color: Color(0xff3d5a96), fontSize: 16),),
              Container(
                // padding: const EdgeInsets.all(5.0),
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff8dbe5d)),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ListTile(
                  title: Text(
                    "${pickedDateExpiry.year} , ${pickedDateExpiry.month} , ${pickedDateExpiry.day}",
                    style: TextStyle(
                      color: Color(0xff3d5a96),
                      fontSize: 16,
                    ),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_down , color: Colors.white,),
                  onTap: _pickDateExpiry,
                ),
              ),
              SizedBox(height: 10,),
              Text('Date Of Birth*' , style: TextStyle(color: Color(0xff3d5a96), fontSize: 16),),
              Container(
                // padding: const EdgeInsets.all(5.0),
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff8dbe5d)),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ListTile(
                  title: Text(
                    "${pickedDateOfBirth.year} , ${pickedDateOfBirth.month} , ${pickedDateOfBirth.day}",
                    style: TextStyle(
                      color: Color(0xff3d5a96),
                      fontSize: 16,
                    ),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_down , color: Colors.white,),
                  onTap: _pickDateOfBirth,
                ),
              ),
              SizedBox(height: 10,),
              _buildDropdownButtonFormField('Client Current Occupation*' , [
                'Self Employed', 'Employee' , 'Employer']),
              SizedBox(height: 15,),
              Conditional.single(
                context: context,
                conditionBuilder: (BuildContext context) => flag,
                widgetBuilder: (BuildContext context) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          padding: EdgeInsets.only(left: 40),
                          child: Text('title*' , style: TextStyle(color: Color(0xff3d5a96), fontSize: 16),)),
                      Container(
                        padding: EdgeInsets.only(left: 40),
                        child:_buildTextFormField('' , TextInputType.text , true),
                      ),
                      SizedBox(height: 8,),
                      Container(
                          padding: EdgeInsets.only(left: 40),
                          child: Text('Organization Name*' , style: TextStyle(color: Color(0xff3d5a96), fontSize: 16),)),
                      Container(
                        padding: EdgeInsets.only(left: 40),
                        child:_buildTextFormField('' , TextInputType.text , true),
                      ),
                      SizedBox(height: 20,),
                    ],
                  );
                },
                fallbackBuilder: (BuildContext context) {
                  return Container();
                },
              ),
              _buildDropdownButtonFormField('Industry / Business nature*' , [
                'Accounting auditing', 'Administration' , 'Architecture' , 'Banking',
                'Beauty and Fashion' , 'Cleaning Service' , 'Community Service',
                'Construction and Building' , 'Consulting', 'Customer Service and call center',
                'Design, Creative, Arts' , 'Engineering' , 'Chemical Engineering' ,
                'Civil Engineering' , 'Electrical Engineering' , 'Mechanical Engineering',
                'Farming and Agriculture' , 'Fiance and Investment' , 'Hospitality and tourism',
                'Human Resources and recruitment' , 'Information Technology' , 'Legal' ,
                'Logistics and Transportation' , 'maintenance, repair and technician' , 'Management',
                'Manufacturing' , 'Marketing and PR' , 'Medical, Health care and nursing', 'Oil and Gas',
                'Purchasing Procurement' , 'Quality control' , 'Research and Development',
                'Safety' , 'Sale' , 'Secretarial' , 'Security' , 'Support Services',
                'Teaching and Academics' , 'Training and Development' , 'Translating' , 'Writing and Journalism',
                'Other']),
              SizedBox(height: 15,),
              Text('Facebook Account' , style: TextStyle(color: Color(0xff3d5a96), fontSize: 16),),
              _buildTextFormField('' , TextInputType.url , false),
              SizedBox(height: 10),
              Text('LinkedLn Account' , style: TextStyle(color: Color(0xff3d5a96), fontSize: 16),),
              _buildTextFormField('' , TextInputType.url , false),
              SizedBox(height: 10,),
              Text('Email Address*' , style: TextStyle(color: Color(0xff3d5a96), fontSize: 16),),
              _buildTextFormField('' , TextInputType.emailAddress , false),
              SizedBox(height: 10,),
              Text('Company Website' , style: TextStyle(color: Color(0xff3d5a96), fontSize: 16),),
              _buildTextFormField('Company Website' , TextInputType.url , false),
              SizedBox(height: 10,),
              Text('Phone*' , style: TextStyle(color: Color(0xff3d5a96), fontSize: 16),),
              _buildTextFormField('' , TextInputType.number , false),
              SizedBox(height: 10,),
              Text('Mobile*' , style: TextStyle(color: Color(0xff3d5a96), fontSize: 16),),
              _buildTextFormField('Mobile*' , TextInputType.phone , false),
              SizedBox(height: 10,),



            ],
          ),
        ),
      ),
    );
  }


  _pickDateIssuing() async {
    DateTime date = await showDatePicker(
      context: context,
      firstDate: DateTime(DateTime.now().year),
      lastDate: DateTime(DateTime.now().year+50),
      initialDate: pickedDateIssuing,
    );
    if(date != null)
      setState(() {
        pickedDateIssuing = date;
      });
  }

  _pickDateExpiry() async {
    DateTime date = await showDatePicker(
      context: context,
      firstDate: DateTime(DateTime.now().year),
      lastDate: DateTime(DateTime.now().year+50),
      initialDate: pickedDateExpiry,
    );
    if(date != null)
      setState(() {
        pickedDateExpiry = date;
      });
  }

  _pickDateOfBirth() async {
    DateTime date = await showDatePicker(
      context: context,
      firstDate: DateTime(DateTime.now().year),
      lastDate: DateTime(DateTime.now().year+50),
      initialDate: pickedDateOfBirth,
    );
    if(date != null)
      setState(() {
        pickedDateOfBirth = date;
      });
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
          flag=false;
          if(dropdownValue == 'Employee' || dropdownValue == 'Employer'){
            flag=true;
          }
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
        //labelText: text,
        //labelStyle: TextStyle(color: Color(0xff3d5a96) , fontSize: 16),
        filled: true,
        fillColor: Colors.white,
        focusColor: Color(0xff8dbe5d),
      ),
    );
  }


}


