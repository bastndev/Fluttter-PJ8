import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle font40 = const TextStyle(fontSize: 40);
    int counter = 10;

/* --- --- --- --- Home 1 */
    return Scaffold(
      /* --- --- --- --- AppBar */
      appBar: AppBar(
        title: const Text('Holaaa'),
        elevation: 10,
      ),

      /* --- --- --- --- Body - Cuerpo */
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Number Clicks',
              style: font40,
            ),
            Text(
              '$counter',
              style: font40,
            )
          ],
        ),
      ),
      /* --- --- --- --- Button */
      // floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          counter++;
          print('Hola : $counter');
        },
      ),
    );
  }
}
