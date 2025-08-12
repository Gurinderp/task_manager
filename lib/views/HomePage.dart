import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final String _initial = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_initial',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
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
