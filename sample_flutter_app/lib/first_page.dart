import 'package:flutter/material.dart';
import 'package:sample_flutter_app/next_page.dart';

class First extends StatefulWidget {
  const First({super.key, required this.title});
  final String title;

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('次のページへ'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Next(title: '次のページへ')),);
          },
        ),
      ),
    );
  }
}