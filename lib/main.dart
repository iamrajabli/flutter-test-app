import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          title: const Text("Test App"),
          backgroundColor: const Color.fromRGBO(0, 107, 112, 1),
        ),
        drawer: Drawer(
          child: ListView(
            children: const <Widget>[
              DrawerHeader(
                decoration:
                    BoxDecoration(color: Color.fromRGBO(0, 107, 112, 1)),
                child: Text(
                  'Test App',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.login),
                title: Text("Login"),
              ),
              ListTile(leading: Icon(Icons.add), title: Text("Register")),
            ],
          ),
        ),
        body: Center(
            child: Container(
          alignment: Alignment.center,
          width: 300,
          height: 100,
          color: const Color.fromRGBO(0, 107, 112, 1),
          // margin: const EdgeInsets.all(15),
          // const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
          // const EdgeInsets.fromLTRB(10, 10, 10, 10),
          // padding: const EdgeInsets.all(8),
          child: const Text(
            "Alphadev Software",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color.fromRGBO(0, 107, 112, 1),
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.login), label: "Login"),
          ],
          selectedItemColor: const Color.fromRGBO(0, 107, 112, 1),
        ),
      ),
    );
  }
}
