import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Center(
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
            Text("Welcome",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
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
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  labelText: "Password",
                ),
              ),
              SizedBox(
              height: 20.0,
              //child: Text(""),
                ),

              ElevatedButton(
                onPressed: () {
                  print("Hello");
                } , 
                //style: TextButton.styleFrom(),
                child: Text("Login"),
                ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}