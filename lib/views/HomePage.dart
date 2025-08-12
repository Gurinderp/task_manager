import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 116, 116, 1),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(166, 255, 165, 1),
              blurRadius: 10,
              spreadRadius: 10,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadiusGeometry.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          child: BottomNavigationBar(
            backgroundColor: Color.fromRGBO(255, 191, 191, 1),
            selectedItemColor: Color.fromRGBO(172, 164, 255, 1),
            unselectedItemColor: Color.fromRGBO(191, 255, 216, 1),
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home1"),
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home2"),
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home3"),
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home4"),
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home5"),
            ],
            onTap: (index) {
              currentIndex = index;
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: Color.fromRGBO(129, 0, 114, 1),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[const Text('Hello World! 32')],
        ),
      ),
    );
  }
}

AppBar _buildAppBar() {
  return AppBar(
    backgroundColor: const Color.fromARGB(255, 255, 121, 80),
    title: Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 10, top: 5),
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Color.fromRGBO(104, 104, 255, 1),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        SizedBox(width: 10),
        Text(
          "AppBar Title",
          style: TextStyle(
            color: Color.fromRGBO(53, 53, 53, 1),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}
