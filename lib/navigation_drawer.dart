import 'package:flutter/material.dart';

class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  final _messengerKey = GlobalKey<ScaffoldMessengerState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        scaffoldMessengerKey: _messengerKey,
        home: Scaffold(
          appBar: AppBar(),
          drawer: Drawer(
            child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  DrawerHeader(
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: Container(
                      height: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height : 100,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(50.0))
                            ),
                            child: Image.network("https://kurs-market.com/images/pay1.png"),
                          ),
                          const Text("Навигация во Flutter")
                        ],
                      ),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.account_balance_outlined),
                    title: const Text("О Нас"),
                    onTap: () {
                      _messengerKey.currentState!.showSnackBar(
                          const SnackBar(content: Text('О компании')));
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.star_border_purple500_outlined),
                    title: const Text("Миссия"),
                    onTap: () {
                      _messengerKey.currentState!.showSnackBar(
                          const SnackBar(content: Text('Миссия')));
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.person_search),
                    title: const Text("Руководство"),
                    onTap: () {
                      _messengerKey.currentState!.showSnackBar(
                          const SnackBar(content: Text('Руководство')));
                    },
                  ),
                  const Divider(),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text("Профиль"),
                  ),
                  ListTile(
                    leading: const Icon(Icons.perm_identity),
                    title: const Text("Создать учетную запись"),
                    onTap: () {
                      _messengerKey.currentState!.showSnackBar(
                          const SnackBar(content: Text('Создать учетную запись')));
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: const Text("Настройки"),
                    onTap: () {
                      _messengerKey.currentState!.showSnackBar(
                          const SnackBar(content: Text('Переход в Настройки')));
                    },
                  ),
                ]
            ),

          ),
          body: Center(child: Text("Содержимое экрана")),
        )
    );
  }
}
