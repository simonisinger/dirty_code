import 'package:flutter/material.dart';

class DirtyScreenOne extends StatelessWidget {
  const DirtyScreenOne({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #1"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: List.generate(4, (i) => i+1)
              .map((int number) => CleanBoxOne(number: number))
              .toList(),
        ),
      ),
    );
  }
}

class CleanBoxOne extends StatelessWidget {
  final int number;
  const CleanBoxOne({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.redAccent),
      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          const Icon(Icons.bug_report),
          const SizedBox(
            width: 8,
          ),
          Text(
            'Box #$number',
            style: const TextStyle(fontSize: 20, color: Colors.white),
          )
        ],
      ),
    );
  }
}
