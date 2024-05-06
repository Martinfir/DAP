import 'package:flutter_application_1/CORE/SCREENS/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  static const String name = 'login';

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _LoginView(),
    );
  }
}

class _LoginView extends StatelessWidget {
  final TextEditingController userController = TextEditingController();
  final TextEditingController userController1 = TextEditingController();
  _LoginView();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
          ElevatedButton(
                onPressed: () {        
                  String user = userController.text;
                  String pass = userController1.text;

                  if (user == 'Martin') {
                   if (pass == 'hola') {
                    print('Login correcto');
                  context.pushNamed(HomeScreen.name, extra: userController.text);  
                  }
                   else {
                    print('Contraseña Incorrecta');
                  }
                  } 
                  else {
                    print('Usuario Incorrecto');
                  }
                  if (user == '') {
                  
                    print('Login vacio');
                  } 
                }, 
                child: const Text('Login')
              ),
        
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: userController,
            decoration: const InputDecoration(
              hintText: 'Username',
              prefixIcon: Icon(Icons.person),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
            ),
          ),
        ),
         Padding(
          padding: const EdgeInsets.all(8.0),
          child:      TextField(
                enableInteractiveSelection: false,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.key),
                ),
                controller: userController1,
              )
          ),
        const SizedBox(height: 16),
      
      ],
    );
  }
}
