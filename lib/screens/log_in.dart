import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {

  final _formKey = GlobalKey<FormState>();
  bool isNoVisiblePassword = true;
  String email;
  String password;

  bool remember = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.fromLTRB(50, MediaQuery.of(context).size.height * 0.15, 50, 0),
        decoration: BoxDecoration(
          image: DecorationImage(
                image: AssetImage("assets/images/login_background.jpg"),
                fit: BoxFit.cover)
        ),
        child: Center(
          child: ListView(
            children: [
              Container(
                child: Image.asset(
                  'assets/images/logo.png',
                  width: MediaQuery.of(context).size.width * 0.12,
                  height: MediaQuery.of(context).size.height * 0.12,
                  //fit: BoxFit.cover,
                ),
              ),
              SizedBox(height:  MediaQuery.of(context).size.height * 0.01),
              Center(
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Color(0xff3d5a96),
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                  ),
                ),
              ),
              Divider(
                indent: MediaQuery.of(context).size.width * 0.32,
                endIndent: MediaQuery.of(context).size.width * 0.32 ,
                height: 10,
                thickness: 3,
                color: Color(0xff8ebe41),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.025),
              Container(
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Container(
                          height: MediaQuery.of(context).size.height * 0.09,
                          child: buildEmailFormField()
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                      Container(
                          height: MediaQuery.of(context).size.height * 0.09,
                          child: buildPasswordFormField()
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                      /*Row(
                        children: [
                          Checkbox(
                            value: remember,
                            activeColor: Color(0xff3d5a96),
                            onChanged: (value) {
                              setState(() {
                                remember = value;
                              });
                            },
                          ),
                          Text("Remember me"),
                          Spacer(),
                        ],
                      ),*/
                      ElevatedButton(
                          onPressed: (){
                            Navigator.pushReplacementNamed(
                              context,
                              '/Home',
                            );
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(
                                fontSize: MediaQuery.of(context).size.height * 0.03,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),
                          ),
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.fromLTRB(25, 10, 25, 10)),
                            backgroundColor: MaterialStateProperty.all<Color>(Color(0xff3d5a96)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                )
                            )
                          )
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.15,),
                      Container(
                        child:  InkWell(
                          onTap: (){
                            Navigator.pushReplacementNamed(
                                context,
                                '/SignUp',
                            );
                          },
                          child: Text(
                              'Register here',
                            style: TextStyle(
                                color: Color(0xff3d5a96),
                                fontWeight: FontWeight.bold,
                                fontSize: MediaQuery.of(context).size.height * 0.025
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }









  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: "Username",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        prefixIcon: Icon(Icons.person),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: Color(0xFFAAB5C3))),
        filled: true,
        fillColor: Color(0xFFF3F3F5),
        focusColor: Color(0xff3d5a96),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: Color(0xff3d5a96))),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: this.isNoVisiblePassword,
      decoration: InputDecoration(
        hintText: "password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        prefixIcon: Icon(Icons.vpn_key),
        suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                if (this.isNoVisiblePassword)
                  this.isNoVisiblePassword = false;
                else
                  this.isNoVisiblePassword = true;
              });
            },
            child: (this.isNoVisiblePassword)
                ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.visibility_off,
              ),
            )
                : Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.visibility,
              ),
            )),

        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: Color(0xFFAAB5C3))),
        filled: true,
        fillColor: Color(0xFFF3F3F5),
        focusColor: Color(0xff3d5a96),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: Color(0xff3d5a96))),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            ),
      ),
    );
  }

}
