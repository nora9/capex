import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      /*decoration: BoxDecoration(
          color: Colors.white
      ),*/
      width: MediaQuery.of(context).size.width / 1.8,
      child: Drawer(                                                         // endDrawer => arabic (right), drawer => english (left)    if we use Directionality that will change
          child: ListView(
            children: <Widget>[
              Container(
                child: UserAccountsDrawerHeader(
                  accountName: Text(
                      'Ann Alex',
                    style: TextStyle(
                      color: Color(0xFF474646),
                        fontSize: MediaQuery.of(context).size.height * 0.025
                    ),
                  ),
                  accountEmail: Text(
                      'alexiann@example.com',
                    style: TextStyle(
                      color: Color(0xFF474646),
                        fontSize: MediaQuery.of(context).size.height * 0.02
                    ),
                  ),
                  currentAccountPicture: CircleAvatar(child: Icon(Icons.person,),backgroundColor: Color((0xff3d5a96)),),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    //image: DecorationImage(image: AssetImage('name') , fit: BoxFit.cover),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20 , right: 20),
                child: Column(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, '/Home');
                      },
                      child: ListTile(
                        title: Text('Home'),
                        trailing: Icon(Icons.navigate_next , color: Color(0xff3d5a96),),
                      ),
                    ),
                    ListTile(
                      title: Text('New Loan'),
                      trailing: Icon(Icons.navigate_next , color: Color(0xff3d5a96),),
                    ),
                    ListTile(
                      title: Text('My Loan'),
                      trailing: Icon(Icons.navigate_next , color: Color(0xff3d5a96),),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.pushNamedAndRemoveUntil(context, '/Settings', (route) => false);
                      },
                      child: ListTile(
                        title: Text('Settings'),
                        trailing: Icon(Icons.navigate_next , color: Color(0xff3d5a96),),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.pushNamedAndRemoveUntil(context, '/LogIn', (route) => false);
                      },
                      child: ListTile(
                        title: Text('Logout'),
                        trailing: Icon(Icons.navigate_next , color: Color(0xff3d5a96),),
                      ),
                    )
                  ],
                ),
              )
            ],
          )
      ),
    );
  }
}


/*
ListTile(
              title: Text(
                  'YourCompany, Joel Willis',
                style: TextStyle(
                  color:  Colors.grey[600],
                ),
              ),
              leading: Icon(Icons.build),
            ),
            //Divider(color: Colors.blue, /*height: 10.0 , */ thickness: 2.0,),
            ListTile(
              title: Text('858 Lynn Street Bayonne NJ 07002 United States',style: TextStyle(
                color:  Colors.grey[600],
              ),),
              leading: Icon(Icons.location_on),
              onTap: (){},
              //onLongPress: (){},
            ),
            ListTile(
              title: Text('(683)-556-5104',style: TextStyle(
                color:  Colors.grey[600],
              ),),
              leading: Icon(Icons.call),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Shop()),
                );
              },
              //onLongPress: (){},
            ),
            ListTile(
              title: Text('joel.willis63@example.com',style: TextStyle(
                color:  Colors.grey[600],
              ),),
              leading: Icon(Icons.email),
              onTap: (){},
              //onLongPress: (){},
            ),
 */

