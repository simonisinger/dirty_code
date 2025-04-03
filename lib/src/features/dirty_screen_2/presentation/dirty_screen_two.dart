import 'package:flutter/material.dart';

class DirtyScreenTwo extends StatelessWidget {
  const DirtyScreenTwo({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #2"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: ['A', 'B', 'C', 'D'].map((e) => CleanBoxTwo(boxName: e)).toList(),
        ),
      ),
    );
  }
}

class CleanBoxTwo extends StatelessWidget {
  final String boxName;
  const CleanBoxTwo({super.key, required this.boxName});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.greenAccent),
      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          const Icon(Icons.eco),
          const SizedBox(
            width: 8,
          ),
          Text(
            'Box $boxName',
            style: const TextStyle(fontSize: 20, color: Colors.white),
          )
        ],
      ),
    );
  }
}