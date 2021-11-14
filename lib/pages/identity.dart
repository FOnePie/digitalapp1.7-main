import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {
  PostPage({Key key, this.arguments}) : super(key: key);
  final arguments;
  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  final arguments;
  _PostPageState({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.purple[200],
        appBar: AppBar(
          title: Text('身份认证'),
          centerTitle: true,
          actions: [
            TextButton(
                style: ButtonStyle(
                    overlayColor:
                        MaterialStateProperty.all(Colors.transparent)),
                onPressed: () {
                  print('按到了提交');
                },
                child: Text('提交',
                    style: TextStyle(color: Colors.white, fontSize: 16)))
          ],
        ),
        body: ListView(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(245, 245, 245, 0.8),
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
              margin: EdgeInsets.all(5.0),
              child: Text('当前审核状态'),
            ),
            Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(245, 245, 245, 0.8),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                margin: EdgeInsets.all(5.0),
                child: ListView(
                  children: <Widget>[
                    Text('企业/个人证明材料'),
                    Text('影响力证明材料'),
                  ],
                ))
          ],
        ));
  }
}
