import 'package:flutter/material.dart';
import 'package:projetointheirskin/db/shared_prefs.dart';
import 'package:projetointheirskin/pages/home_page.dart';
import 'package:projetointheirskin/domain/Usuario.dart';
import 'package:projetointheirskin/api/usuarios_api.dart';

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
    return Container(
      padding: EdgeInsets.all(10.0),
      color: Color(0xFFe7ddc9),
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              Text("Login page")
            ],
          ),
          Container(
            color: Color(0xFFf0e6d4),
            height: 200,
            width: 200,
          ),
          /*SizedBox(
            child: ElevatedButton(onPressed: onPressed, child: Text('Entrar')),
          )*/
        ],
      ),
    );
  }

  /*Future<void> onPressed() async {
    String username = userController.text;
    String password = passwordController.text;

    User? user = await UserApi().login(username, password);

    if (user != null) {
      // SharedPrefs().setUserStatus(user.id);
      SharedPrefs().setUserStatus(user.id)
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
*/
}
