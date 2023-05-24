import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 206, 107, 219),
      appBar: AppBar(
        title: Text(
          'Mi aplicacion',
          style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              style: const TextStyle(
                fontSize: 160,
                fontWeight: FontWeight.w100,
                color: Colors.white,
              ),
            ),
            Text(
              'Clik${clickCounter == 1 ? '' : 's'}',
              style: const TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            clickCounter++;
          });
        },
        child: Icon(Icons.plus_one),
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 219, 218, 213),
      ),
    );
  }
}
