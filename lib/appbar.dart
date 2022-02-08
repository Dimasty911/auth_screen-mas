import 'package:flutter/material.dart';
class appbar extends StatefulWidget {
  const appbar({Key? key}) : super(key: key);

  @override
  _appbarState createState() => _appbarState();
}

class _appbarState extends State<appbar> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle =
    TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);

    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Разделы:"),
            actions: <Widget>[
              IconButton(
                  tooltip: "Аккаунт",
                  onPressed: () {},
                  icon: const Icon(Icons.perm_identity)
              ),
              IconButton(
                  tooltip: "Настройки",
                  onPressed: () {},
                  icon: const Icon(Icons.settings)),
              TextButton(
                onPressed: () {},
                child: const Text("Контакты"),
                style: buttonStyle,
              ),
            ],
          ),
          body: Center(child: Text("Содержимое страницы")),
        )
    );
  }
}
