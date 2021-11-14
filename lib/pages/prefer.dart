import 'package:event_bus/event_bus.dart';
import 'package:flutter/material.dart';

var preferMap = {"性能散热": 1, "外观质感": 2, "手感": 3, "摄像": 4, "续航": 5};
EventBus eventBus = new EventBus();

class ClickEvent {
  var content;
  bool click;
  ClickEvent(this.content, this.click);
}

class PreferButton extends StatefulWidget {
  final fontSize;
  final height;
  final content;
  PreferButton(this.content, this.fontSize, this.height);
  @override
  _PreferButton createState() =>
      _PreferButton(this.content, this.fontSize, this.height);
}

class _PreferButton extends State<PreferButton> {
  final fontSize;
  final content;
  final height;
  _PreferButton(this.content, this.fontSize, this.height);
  bool click = false;
  Color myColor;

  @override
  void initState() {
    super.initState();
    this.myColor = click ? Color.fromRGBO(114, 70, 255, 0.25) : Colors.white70;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          setState(() {
            this.click = !this.click;
            this.myColor =
                click ? Color.fromRGBO(114, 70, 255, 0.25) : Colors.white70;
          });
          eventBus.fire(ClickEvent(this.content, this.click));
        },
        child: Container(
          margin: EdgeInsets.fromLTRB(70, 20, 70, 20),
          height: height,
          width: double.infinity,
          child: Center(
              child: Text(
            content,
            style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: fontSize),
          )),
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    offset: Offset(-1.0, 2.0), //阴影x轴偏移量
                    blurRadius: 8, //阴影模糊程度
                    spreadRadius: 4 //阴影扩散程度
                    )
              ],
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: this.myColor),
        ));
  }
}

class PreferPage extends StatefulWidget {
  final arguments;
  PreferPage({this.arguments});
  @override
  State<StatefulWidget> createState() {
    return _PreferPage(arguments: {this.arguments});
  }
}

class _PreferPage extends State<PreferPage> {
  final arguments;
  var preferResult = [];
  _PreferPage({this.arguments});

  @override
  void initState() {
    super.initState();
    eventBus
        .on<ClickEvent>()
        .listen((ClickEvent e) => changePreferInfo(e.click, e.content));
  }

  changePreferInfo(click, content) {
    var item = preferMap[content];
    if (mounted) {
      setState(() {
        if (!click) {
          preferResult.remove(item);
        } else {
          preferResult.add(preferMap[content]);
        }
      });
    }
    print(preferResult);
    print(preferResult.length);
  }

  @override
  void dispose() {
    super.dispose();
    preferResult = [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.purple[200],
        appBar: AppBar(
          title: Text('偏好设置'),
          centerTitle: true,
          actions: [
            TextButton(
                style: ButtonStyle(
                    overlayColor:
                        MaterialStateProperty.all(Colors.transparent)),
                onPressed: () {
                  print('按到了完成');
                },
                child: Text('完成',
                    style: TextStyle(color: Colors.white, fontSize: 16)))
          ],
        ),
        body: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/bg.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(children: [
              getMyCard([
                SizedBox(height: 20),
                RichText(
                    text: TextSpan(
                        text: '你更看重',
                        style: TextStyle(color: Colors.black54, fontSize: 20.0),
                        children: [
                      TextSpan(
                          text: '产品',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: '的哪些方面？',
                          style:
                              TextStyle(color: Colors.black54, fontSize: 20.0))
                    ])),
                SizedBox(height: 20),
                PreferButton('性能散热', 18.0, 60.0),
                PreferButton('外观质感', 18.0, 60.0),
                PreferButton('手感', 18.0, 60.0),
                PreferButton('摄像', 18.0, 60.0),
                PreferButton('续航', 18.0, 60.0),
                SizedBox(height: 35),
              ], 100.0, 30.0, 0.0),
              getMyCard([
                Offstage(
                    offstage: preferResult.length == 0,
                    child: Container(
                        child: Text(
                      '已选择：$preferResult',
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    )))
              ], 0.0, 0.0, preferResult.length == 0 ? 0.0 : 15.0)
            ])));
  }
}

Widget getMyCard(content, top, bottom, padding) {
  return Container(
    margin: EdgeInsets.fromLTRB(25, top, 25, bottom),
    padding: EdgeInsets.all(padding),
    decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.10),
              offset: Offset(3.9, 5.0), //阴影x轴偏移量
              blurRadius: 6, //阴影模糊程度
              spreadRadius: 1 //阴影扩散程度
              )
        ],
        color: Color.fromRGBO(255, 255, 255, 0.90),
        borderRadius: BorderRadius.all(Radius.circular(30))),
    child: Column(
      children: content,
    ),
  );
}
