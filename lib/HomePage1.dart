import 'package:flutter/material.dart';

import 'PetShopPage.dart';
import 'Profile.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  _HomePage1State createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
 


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
                child: Text('Hie HomePage Page'),
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
