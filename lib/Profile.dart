import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'HomePage1.dart';
import 'PetShopPage.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            SizedBox(height:200),

            Center(
              child: Container(
                child: Text('Hie Profile Page'),
              ),
            ),
            SizedBox(height:550),

            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(80.0,8.0,8.0,10.0),
                child: Row(children: <Widget>[
                  IconButton(onPressed: () { Navigator.push(
                    context,MaterialPageRoute(builder: (context) => HomePage1()),
                  ); }, icon: Icon(Icons.home,),),
                  SizedBox(width: 60,),
                  IconButton(onPressed: () { Navigator.push(
                    context,MaterialPageRoute(builder: (context) => PetShopPage()),
                  ); }, icon: Icon(Icons.pets_outlined,),),
                  SizedBox(width: 60,),

                  IconButton(onPressed: () { Navigator.push(
                    context,MaterialPageRoute(builder: (context) => ProfilePage()),
                  ); }, icon: Icon(Icons.person,),),
                ]

                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
