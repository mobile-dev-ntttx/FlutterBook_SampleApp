import 'package:flutter/material.dart';

class Next extends StatefulWidget {
  const Next({super.key, required this.title});
  final String title;

  @override
  State<Next> createState() => _NextState();
}

class _NextState extends State<Next> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
          child: ElevatedButton(
            child: const Text('最初のページへ'),
            onPressed: () {
              // 呼び出し元の画面(最初のページ)が存在するかを判定
              if (Navigator.canPop(context)) {
                // 呼び出し元の画面へ遷移
                Navigator.pop(context);
              }
            },
          )
      ),
    );
  }
}
