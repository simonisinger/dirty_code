import 'package:flutter/material.dart';

class DirtyScreenThree extends StatelessWidget {
  const DirtyScreenThree({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #3"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: List.generate(4, (i) => i+1)
              .map((int number) => CleanBoxThree(number: number))
              .toList(),
        ),
      ),
    );
  }
}

class CleanBoxThree extends StatelessWidget {
  final int number;
  const CleanBoxThree({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.orangeAccent
      ),
      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          const Icon(Icons.warning),
          const SizedBox(
            width: 8,
          ),
          Text(
            'Alert $number',
            style: const TextStyle(fontSize: 20, color: Colors.white),
          )
        ],
      ),
    );
  }
}