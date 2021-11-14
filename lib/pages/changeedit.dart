import 'package:flutter/material.dart';

class ChangeEditPage extends StatefulWidget {
  final arguments;
  ChangeEditPage({Key key, this.arguments}) : super(key: key);

  // EditPage({this.arguments});
  @override
  _ChangeEditPageState createState() =>
      _ChangeEditPageState(arguments: {this.arguments});
}

class _ChangeEditPageState extends State<ChangeEditPage> {
  final arguments;
  _ChangeEditPageState({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.purple[200],
        appBar: AppBar(
          title: Text('修改帖子'),
          centerTitle: true,
          actions: [
            TextButton(
                style: ButtonStyle(
                    overlayColor:
                        MaterialStateProperty.all(Colors.transparent)),
                onPressed: () {
                  print('按到了发布');
                },
                child: Text('发布',
                    style: TextStyle(color: Colors.white, fontSize: 16)))
          ],
        ),
        body: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/background.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(children: <Widget>[
              Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  // padding: EdgeInsets.all(padding),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.10),
                            offset: Offset(3.9, 5.0), //阴影x轴偏移量
                            blurRadius: 6, //阴影模糊程度
                            spreadRadius: 1 //阴影扩散程度
                            )
                      ],
                      color: Color.fromRGBO(255, 255, 255, 0.0),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Column(children: [
                    SizedBox(height: 95),
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      // padding: EdgeInsets.all(padding),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.10),
                                offset: Offset(3.9, 5.0), //阴影x轴偏移量
                                blurRadius: 6, //阴影模糊程度
                                spreadRadius: 1 //阴影扩散程度
                                )
                          ],
                          color: Color.fromRGBO(255, 255, 255, 0.9),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      child: TextField(
                        // maxLines: 2,
                        decoration: InputDecoration(
                          hintText: "    标题",
                          // border: OutlineInputBorder()
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      // padding: EdgeInsets.all(padding),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.10),
                                offset: Offset(3.9, 5.0), //阴影x轴偏移量
                                blurRadius: 6, //阴影模糊程度
                                spreadRadius: 1 //阴影扩散程度
                                )
                          ],
                          color: Color.fromRGBO(255, 255, 255, 0.9),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      child: TextField(
                        maxLines: 28,
                        decoration: InputDecoration(
                          hintText: "    正文",
                          // border: OutlineInputBorder()
                        ),
                      ),
                    )
                  ])),
            ])));
  }
}
