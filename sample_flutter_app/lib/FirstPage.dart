import 'package:flutter/material.dart';
import 'package:sample_flutter_app/NextPage.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('最初のページ'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('次のページへ'),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NextPage()),);
          },
        ),
      ),
    );
  }
}