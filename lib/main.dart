import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Agregando Bordes APP'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          // The title text which will be shown on the action bar
          title: Text(title),
          backgroundColor: Color(0xffd051f6),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.account_circle)),
              Tab(icon: Icon(Icons.school)),
              Tab(icon: Icon(Icons.favorite_border)),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xffd051f6),
                ),
                child: Text(
                  'DRAWER ANDREA',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.message),
                title: Text('Mensajes'),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Perfil'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Configuracion'),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 250,
                    height: 70,
                    child: const Text(
                      textAlign: TextAlign.center,
                      'Andrea Angelica Sanchez Dominguez',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border:
                          Border.all(color: const Color(0xffd051f6), width: 3),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(30),
                    child: Image.asset(
                      'assets/andrea.jpg',
                      width: 250,
                      height: 250,
                      fit: BoxFit.cover,
                    ),
                    decoration: BoxDecoration(
                      border: const Border(
                        bottom: BorderSide(
                          color: Colors.purple,
                          width: 10,
                        ),
                        top: BorderSide(
                          color: Colors.purple,
                          width: 10,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 250,
                    height: 50,
                    child: const Text(
                      '6-J PROGRAMACION',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                            color: const Color(0xffd051f6), width: 5)),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 250,
                    height: 45,
                    child: const Text(
                      textAlign: TextAlign.center,
                      'C.B.T.i.s. No.128',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border:
                          Border.all(color: const Color(0xffd051f6), width: 3),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(30),
                    child: Image.asset(
                      'assets/cbtis.png',
                      width: 250,
                      height: 250,
                      fit: BoxFit.cover,
                    ),
                    decoration: BoxDecoration(
                      border: const Border(
                        bottom: BorderSide(
                          color: Color(0xffd051f6),
                          width: 10,
                        ),
                        top: BorderSide(
                          color: Color(0xffd051f6),
                          width: 10,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Revista Jaguares',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Image.asset(
                    'assets/cbtis2.jpg',
                    width: 250,
                    height: 350,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
