import 'package:flutter/material.dart';
import 'package:flutter_sabak_7/my_home_page.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  String login = '';
  String pasword = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Логин Тест'),
      ),
      body: Column(
        children: [
          SizedBox(
            width: 250,
            height: 300,
            child: Expanded(
              
              child: Image.asset('assets/kg.png', )),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              onChanged: (log) {
                login = log;
              },
              decoration: const InputDecoration(
                suffixIcon: Icon(Icons.account_circle),
                border: OutlineInputBorder(),
                hintText: 'Логин',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              onChanged: (pas) {
                pasword = pas;
              },
              decoration: const InputDecoration(
                suffixIcon: Icon(Icons.visibility),
                border: OutlineInputBorder(),
                hintText: 'Пароль',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (login == 'nurik91@gmail.com' && pasword == 'kurs1234') {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomPage(),
                    ));
              } else {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  duration: Duration(seconds: 5),
                  content:
                      Text('Логин же пароль ката! Сураныч кайрадан жазыныз.'),
                ));
              }
            },
            child: const Text('Кируу'),
          ),
        ],
      ),
    );
  }
}
