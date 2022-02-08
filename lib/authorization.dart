import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const borderStyle = OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(36)),
        borderSide: BorderSide(
            color: const Color(0xFFbbbbbb), width: 2));
    const linkTextStyle = TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Color(0xFF0079D0)
    );

    return MaterialApp(
      home: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/img_3.png"),
                fit: BoxFit.cover,
              ),
            ),
            width: double.infinity,
            child: Column(children: [
              const SizedBox(height: 60,),
              const SizedBox(width: 110, height: 84, child: Image(image: AssetImage('assets/dart-logo.png')),),
              SizedBox(height: 19,),
              const Text('Введите адрес электронной почты',
                style: TextStyle(fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.6)),),
              const SizedBox(height: 20,),
              const SizedBox(width: 244, height: 34,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFeceff1),
                    enabledBorder: borderStyle,
                    focusedBorder: borderStyle,
                    labelText:  'E-mail адрес',
                  ),
                ),
              ),
              SizedBox(height: 20,),
              const SizedBox(width: 244, height: 34,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFeceff1),
                    enabledBorder: borderStyle,
                    focusedBorder: borderStyle,
                    labelText: 'Пароль',
                  ),
                ),
              ),
              SizedBox(height: 28,),
              SizedBox(width: 154, height: 42, child:
              ElevatedButton(onPressed: () {},
                child: Text('Войти'),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF0079D0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(36.0),
                  ),
                ),
              )
              ),
              SizedBox(height: 62,),
              InkWell(child: const Text('Регистрация', style: linkTextStyle,),
                  onTap: () {}),
              SizedBox(height: 19,),
              InkWell(child: Text('Забыли пароль?', style: linkTextStyle,), onTap: () {})

            ],),
          )
      ),
    );
  }
}