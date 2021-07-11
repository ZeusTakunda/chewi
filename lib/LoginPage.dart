import 'package:chewi/HomePage1.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
        body:SafeArea(
          child: ListView(
            children: <Widget>[
              SizedBox(height:40),
              Center(
                child: Text('Sign In',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
              ),
              ),
              SizedBox(height: 20,),
              Icon(Icons.pets_sharp,color: Colors.brown,size: 30.0),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'OpenSans',
                        fontSize: 18,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top:14.0),
                        prefix: Icon(
                          Icons.email_outlined,
                          color: Colors.black,
                          size: 27,
                        ),
                        hintText: 'Email',
                        hintStyle: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'OpenSans',
                        fontSize: 18,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top:14.0),
                        prefix: Icon(
                          Icons.vpn_key_rounded,
                          color: Colors.black,
                          size: 27,
                        ),
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height:40,),
                  FlatButton.icon(onPressed: (){
                    Navigator.push(
                      context,MaterialPageRoute(builder: (context) => HomePage1()),
                    );
                  }, icon: Icon(Icons.verified_user_outlined), label: Text('Login')),
                  Text('Dont have an account yet? Sign up here'),
                  FlatButton.icon(onPressed: (){}, icon: Icon(Icons.app_registration), label: Text('Register'))

                ],
              ),
            ]
          )

        )

    );
  }
}
