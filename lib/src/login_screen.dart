import 'package:flutter/material.dart';
import 'package:login_bloc_approch/src/bloc/bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
          ),
          emailfield(),
          Container(
            margin: const EdgeInsets.all(10),
          ),
          passwordfield(),
          Container(
            margin: const EdgeInsets.all(10),
          ),
          submitbutton(),
        ],
      ),
    );
  }

  Widget emailfield() {
    return StreamBuilder(
      stream: bloc.email,
      builder: (context, snapshot) {
        return TextField(
          onChanged: bloc.changeEmail,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              hintText: 'example@gmail.com',
              labelText: 'Email',
              errorText: snapshot.error as String?),
        );
      },
    );
  }

  Widget passwordfield() {
    return StreamBuilder(
      stream: bloc.password,
      builder: (context, snapshot) {
        return TextField(
          onChanged: bloc.changePassword,
          obscureText: true,
          decoration: InputDecoration(
              hintText: "Password",
              labelText: "Password",
              errorText: snapshot.error as String?),
        );
      },
    );
  }

  Widget submitbutton() {
    return ElevatedButton(onPressed: () {}, child: const Text("Submit"));
  }
}
