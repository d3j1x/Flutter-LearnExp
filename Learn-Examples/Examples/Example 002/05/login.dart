import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset("images/sm.jpg", width: 250),
          Container(
            padding: EdgeInsets.all(20),
            child: Form(
                child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: "Enter Username",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    hintText: "Password",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Text("if you havan't account .. "),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed("signup");
                        },
                        child: Text(
                          "Click Here",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed("homepage");
                      },
                      child: Text(
                        "Log .. in",
                        style: Theme.of(context).textTheme.headline6,
                      )),
                ),
              ],
            )),
          )
        ],
      ),
    );
  }
}

