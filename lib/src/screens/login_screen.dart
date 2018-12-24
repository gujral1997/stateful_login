import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return LoginScreenState();
    }
}

class LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
    Widget build(context) {
      return Container(
        margin: EdgeInsets.all(30.0),
        child: Form(
          key: formKey,
          child: Column(
            children: <Widget>[
              emailField(),
              passwordField(),
              Container(margin: EdgeInsets.only(top:  25.0),),
              submitButton(),
            ],
          ),
        ),
      );
    }

    Widget emailField() {
      return TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          labelText: 'Email',
          hintText: 'you@example.com',
        ),
        validator: (String value) {
          // return if valid otherwise string showing error message
          if(!value.contains('@')) {
            return 'Please enter a valid email';
          }
        },
      );
    }

    Widget passwordField() {
      return TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          labelText: 'Password',
          hintText:  'Password...'
        ),
        validator: (String value) {
          if (value.length < 4) {
            return 'Password should be less than 4 characters';
          }
        },
      );
    }

    Widget submitButton() {
      return RaisedButton(
        color: Colors.blue,
        onPressed: () {
          formKey.currentState.validate();
        },
        child: Text('Submit'),
      );
    }

}