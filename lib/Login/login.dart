import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_managment/Login/auth_provider.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Consumer<Authprovider>(
      builder: (context, authprovider, child)=>
       Scaffold(
        appBar: AppBar(title: Text("Login "),),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: "Enter Email ",

                ),

              ),
              SizedBox(height: 20,),
              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: "Enter Password ",

                ),


              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                authprovider.login(
                    emailController.text.toString(),
                    passwordController.text.toString());
              }, child: authprovider.loading?CircularProgressIndicator(): Text("Login"))

            ],
          ),
        ),
      ),
    );
  }
}
