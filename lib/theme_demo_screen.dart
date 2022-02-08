import 'package:flutter/material.dart';
import 'package:auth_screen/utils/globaltheme.dart';
import 'package:auth_screen/utils/strings.dart';

class ThemesDemoApp extends StatelessWidget {
  const ThemesDemoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: globalTheme(),
      home: ThemesDemoScreen(),
    );
  }
}

class ThemesDemoScreen extends StatefulWidget {
  const ThemesDemoScreen({Key? key}) : super(key: key);

  @override
  _ThemesDemoScreenState createState() => _ThemesDemoScreenState();
}

class _ThemesDemoScreenState extends State<ThemesDemoScreen> {
  double _currentSliderValue = 20;
  bool _isDarkTheme = false;

  Widget _navigationDraw() => Drawer(
    child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.teal,
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
            },
          ),
          ListTile(
            leading: const Icon(Icons.star_border_purple500_outlined),
            title: const Text("Миссия"),
            onTap: () {
            },
          ),
          ListTile(
            leading: const Icon(Icons.person_search),
            title: const Text("Руководство"),
            onTap: () {},
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text("Профиль"),
          ),
          ListTile(
            leading: const Icon(Icons.perm_identity),
            title: const Text("Создать учетную запись"),
            onTap: () { },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Настройки"),
            onTap: () {},
          ),
        ]
    ),

  );

  PreferredSizeWidget _appBar() => AppBar(
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
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: globalTheme(),
      home: Scaffold(
        appBar: _appBar(),
        drawer: _navigationDraw(),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Text('Заголовок', style: Theme.of(context).textTheme.headline5),
                Container(
                  height: 100,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                Row(
                  children: const [
                    Text('Логин: '),
                    Expanded(child: TextField()),
                  ],
                ),
                Row(
                  children: const [
                    Text('Пароль: '),
                    Expanded(child: TextField()),
                  ],
                ),
                ElevatedButton(onPressed: () {}, child: Text('Войти')),
                Text(Strings.longBodyText),
                Slider(
                  value: _currentSliderValue,
                  max: 100,
                  divisions: 5,
                  label: _currentSliderValue.round().toString(),
                  onChanged: (double value) {
                    setState(() {
                      _currentSliderValue = value;
                    });
                  },
                ),
                SwitchListTile(
                    title: Text('Тёмная тема'),
                    value: _isDarkTheme,
                    onChanged: (val) {
                      setState(() {
                        _isDarkTheme = !_isDarkTheme;
                        if (_isDarkTheme) {

                        }
                      });
                    }),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {  },
          child: Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Главная',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Каталог',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.contact_mail),
              label: 'Контакты',
            ),
          ],

          selectedItemColor: Colors.amber[800],

        ),
      ),
    );
  }
}

