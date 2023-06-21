import 'package:demo/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changebutton = false;

  final _formkey = GlobalKey<FormState>();
  
  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()){
      setState(() {
        changebutton = true;
      });
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.homeRoute);
    setState(() {
      changebutton = false;
    });
  }
}

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.canvasColor,
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Image.asset("assets/images/login.png",
              fit: BoxFit.cover),
              SizedBox(
                height: 20.0,
              ),
              Text("Welcome $name",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: Column(
                  children: [
                    TextFormField(
                  decoration: InputDecoration(
                    labelText: "Enter Username",
                    hintText: "Username",
                  ),
                  validator: (value) {
                    if(value!.isEmpty){
                      return "username cannot be empty";
                    }
                    return null;
                  },
                  onChanged: (value){
                    name = value;
                    setState(() { 
                    });
                  }
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Enter Password",
                    hintText: "Password"
                  ),
                  validator: (value) {
                    if(value!.isEmpty){
                      return "username cannot be empty";
                    }
                    else if(value.length < 6){
                      return "passwrod length should be 6!";
                    }
                    return null;
                  }
                ),
                SizedBox(
                  height: 80.0,
                ),
        
                Material(
                  color: Theme.of(context)
                          .floatingActionButtonTheme
                          .backgroundColor,
                  borderRadius: BorderRadius.circular(changebutton?50 : 8),
                  child: InkWell(
                    splashColor: Colors.white,
                    onTap: () => moveToHome(context),
                    child: AnimatedContainer(
                      duration: Duration(seconds: 2),
                      width: changebutton?80 : 110,
                      height: 40,
                      alignment: Alignment.center,
                      child: changebutton
                      ? Icon(
                        Icons.done,
                        color: Colors.white,) 
                      :Text("Login",
                      style: TextStyle(color: Colors.white, 
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                      ),
                      ),
                    ),
                  ),
                )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}    