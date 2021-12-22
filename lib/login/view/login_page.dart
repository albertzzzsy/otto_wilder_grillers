import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_login/login/login.dart';


class LoginPage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => LoginPage());
  }

  @override
  Widget build(BuildContext context) {
    Widget signUpSection = Container(
      padding: const EdgeInsets.all(32),
      child: Column(  
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(text: "Don\'t have an account? "),
                TextSpan(text: "Sign up here", style: TextStyle(color: Colors.blue[800])),
              ]
            ),
          ),
          RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(text: "Forget password "),
                TextSpan(text: "Recover password", style: TextStyle(color: Colors.blue[800])),
              ]
            ),
          ),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
        centerTitle: true,
        backgroundColor: Colors.black,
        ),
      body: ListView(
        children: [
          Image.asset(
            'assets/images/f7.jpeg',
            fit:BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: BlocProvider(
              create: (context) {
                return LoginBloc(
                  authenticationRepository:
                      RepositoryProvider.of<AuthenticationRepository>(context),
                );
              },
              child: LoginForm(),
            ),
          ),
          signUpSection,
        ],
      ) 
    );
  }
}