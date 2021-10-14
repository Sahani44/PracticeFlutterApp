import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/loginImage.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20.0,
                //child: Text(""),
              ),
              Text("Welcome $name",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
              ),
              SizedBox(
                height: 20.0,
                //child: Text(""),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter User Name",
                    labelText: "User Name",
                  ),
                  onChanged: (value){
                    name = value;
                    setState(() {
                      
                    });
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                  ),
                ),
                SizedBox(
                height: 40.0,
                //child: Text(""),
                  ),

                InkWell(
                  onTap: () async {
                    setState(() {
                      changeButton = true;
                    });
                    await Future.delayed(Duration(seconds: 1));
                    Navigator.pushNamed(context , MyRoutes.homeRoute);
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: changeButton? 50 : 150,
                    height: 50,
                    alignment: Alignment.center,
                    child: changeButton?Icon(Icons.done,
                      color: Colors.white,
                    ) : 
                    Text("Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      //shape: changeButton ? BoxShape.circle : BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(changeButton ?50:7),
                    ),
                  ),
                ),

 /*               ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context , MyRoutes.homeRoute);
                  } , 
                  style: TextButton.styleFrom(
                    minimumSize: Size(130 , 40),
                  ),
                  child: Text("Login",
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  ),
 */         
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}