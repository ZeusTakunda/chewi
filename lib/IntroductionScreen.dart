import 'package:chewi/LoginPage.dart';
import 'package:flutter/material.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({Key? key}) : super(key: key);

  @override
  _IntroductionScreenState createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:Container(decoration: BoxDecoration(
          image:DecorationImage(image: AssetImage("assets/roberto-nickson--s5WfAx74fM-unsplash.jpg"),
            fit: BoxFit.cover

          )
        ),
          child: Stack(


            children: <Widget>[
              Column(
                children: [
                  SizedBox(height: 190,),
                  Center(child: Text("Chewi",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold ),)),
                  // Image(image: AssetImage("assets/roberto-nickson--s5WfAx74fM-unsplash.jpg"),
                  // fit:BoxFit.cover),
                  SizedBox(height: 400),
                  Container(
                    height: 50.0,
                    child: RaisedButton(
                    child: Text('Login',style: TextStyle(
                      color: Colors.white,
                    )
                      ,),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                      color: Colors.black,
                      onPressed:() {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()),);
                      }),

                    ),
                  SizedBox(height:20),
                  Container(
                    height: 50.0,
                    child: Text('Dont have an account yet?',style: TextStyle(
                      color: Colors.black,
                    )
                      ,),

                  ),
                  SizedBox(height: 5),

                  Container(
                    height: 50.0,
                    child: RaisedButton(
                        child: Text('Sign Up With Apple',style: TextStyle(
                          color: Colors.white,
                        )
                          ,),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                        color: Colors.black,
                        onPressed:() {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()),);
                        }),

                  ),
                  SizedBox(height: 20),

                  Container(
                    height: 50.0,
                    child: RaisedButton(
                        child: Text('Sign Up With Google',style: TextStyle(
                          color: Colors.white,
                        )
                          ,),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                        color: Colors.redAccent,
                        onPressed:() {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()),);
                        }),

                  ),


                ],
              ),



            ],
          ),
        )

    );
  }
}
