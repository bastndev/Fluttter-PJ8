import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 15;

  void increase() {
    counter++;
    setState(() {});
  }

  void neutral() {
    counter = 0;
    setState(() {});
  }

  void decrese() {
    counter--;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    TextStyle font40 = const TextStyle(fontSize: 40);

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
              'Counter Screen',
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomFloatingActions(
          increaseFn: increase, neutralFn: neutral, decreseFn: decrese),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function increaseFn;
  final Function neutralFn;
  final Function decreseFn;

  const CustomFloatingActions({
    super.key,

    required this.increaseFn,
    required this.neutralFn,
    required this.decreseFn,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        
        FloatingActionButton(
          child: const Icon(Icons.exposure_plus_1),
          onPressed: () => increaseFn(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.ac_unit),
          onPressed: () => neutralFn(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1),
          onPressed: () => decreseFn(),
        ),
      ],
    );
  }
}
