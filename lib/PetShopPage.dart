import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'HomePage1.dart';
import 'Profile.dart';

class PetShopPage extends StatefulWidget {
  const PetShopPage({Key? key}) : super(key: key);

  @override
  _PetShopPageState createState() => _PetShopPageState();
}

class _PetShopPageState extends State<PetShopPage> {
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
                child: Text('Hie PetShop Page'),
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
