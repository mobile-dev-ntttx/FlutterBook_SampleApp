import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('次のページ'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('最初のページへ'),
          onPressed: () {
            // 呼び出し元の画面(最初のページ)が存在するかを判定
            if (Navigator.canPop(context)) {
              // 呼び出し元の画面へ遷移
              Navigator.pop(context);
            } else {
              // アプリを終了
              SystemNavigator.pop();
            }
          },
        )
      ),
    );
  }
}