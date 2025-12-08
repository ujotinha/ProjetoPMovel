import 'package:flutter/material.dart';
import 'package:projetointheirskin/db/shared_prefs.dart';
import 'package:projetointheirskin/pages/home_page.dart';
import 'package:projetointheirskin/domain/Usuario.dart';
import 'package:projetointheirskin/api/usuarios_api.dart';
import 'package:provider/provider.dart';

import '../providers/profile_provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(20.0),
          color: Color(0xFFe7ddc9),
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              Row(
                children: [
                  Text("Entrar", style: TextStyle(fontSize: 15),)
                ],
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(10),
                height: 500,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xFFf0e6d4), borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Usuário:"),
                      ],
                    ),
                    SizedBox(height: 12,),
                    TextField(
                      controller: userController,
                      decoration: InputDecoration(
                        hintText: 'Usuário',
                        focusedBorder: buildUserOutlineInputBorder(),
                        border: buildUserOutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Senha:"),
                      ],
                    ),
                    SizedBox(height: 12,),
                    TextField(
                      controller: passwordController,
                      decoration: InputDecoration(
                        hintText: 'Senha',
                        focusedBorder: buildPasswordOutlineInputBorder(),
                        border: buildPasswordOutlineInputBorder(),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                child: ElevatedButton(onPressed: onPressed, child: Text('Entrar')),
              )
            ],
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildPasswordOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey),
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(8),
      ),
    );
  }

  OutlineInputBorder buildUserOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey),
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(8),
      ),
    );
  }

  Future<void> onPressed() async {
    String username = userController.text;
    String password = passwordController.text;

    User? user = await UserApi().login(username, password);

    if (user != null) {
      // SharedPrefs().setUserStatus(user.id);
      SharedPrefs().setUserStatus(user.id);
      ProfileProvider provider = context.read<ProfileProvider>();
      provider.setUser(user);

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return Homepage();
          },
        ),
      );
    } else {
      print('Usuario e/ou senha incorretos!');
    }
  }
}
