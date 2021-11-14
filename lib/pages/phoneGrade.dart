import 'dart:math';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

var RateResult = new Map<String, double>();

class MyRateBar extends StatefulWidget {
  dynamic myfunction;
  MyRateBar({Key key, this.myfunction}) : super(key: key);

  @override
  _MyRateBar createState() => _MyRateBar(myfunction: this.myfunction);
}

class _MyRateBar extends State<MyRateBar> {
  double rating = 0.0;
  dynamic myfunction;

  _MyRateBar({this.myfunction});

  @override
  Widget build(BuildContext context) {
    return SmoothStarRating(
      rating: rating,
      color: Colors.yellow,
      borderColor: Colors.grey,
      isReadOnly: false,
      size: 30,
      filledIconData: Icons.star,
      defaultIconData: Icons.star_border,
      starCount: 5,
      allowHalfRating: false,
      spacing: 2.0,
      onRated: (value) {
        myfunction(value);
      },
    );
  }
}

class PhoneGradePage extends StatefulWidget {
  final Map arguments;
  PhoneGradePage({Key key, this.arguments}) : super(key: key);
  @override
  _PhoneGradePage createState() => _PhoneGradePage(arguments: this.arguments);
}

class _PhoneGradePage extends State<PhoneGradePage> {
  final Map arguments;
  var controller;
  String errorHintText;
  MyRateBar a = MyRateBar(myfunction: (value) {
        RateResult["performance"] = value;
      }),
      b = MyRateBar(myfunction: (value) {
        RateResult["appearance"] = value;
      }),
      c = MyRateBar(myfunction: (value) {
        RateResult["feel"] = value;
      }),
      d = MyRateBar(myfunction: (value) {
        RateResult["camera"] = value;
      }),
      e = MyRateBar(myfunction: (value) {
        RateResult["battery"] = value;
      });
  List<Widget> RateBarGroups = [];

  void clearText() {
    controller.clear();
  }

  _getRandomKey() {
    String randomstr = Random().nextInt(10).toString();
    for (var i = 0; i < 3; i++) {
      var str = Random().nextInt(10);
      randomstr = "$randomstr" + "$str";
      var timenumber = DateTime.now().millisecondsSinceEpoch; //时间
      var uuid = "$randomstr" + "$timenumber";
      return uuid;
    }
  }

  _PhoneGradePage({this.arguments});
  @override
  void initState() {
    super.initState();
    RateBarGroups.add(this.a);
    RateBarGroups.add(this.b);
    RateBarGroups.add(this.c);
    RateBarGroups.add(this.d);
    RateBarGroups.add(this.e);
    controller = TextEditingController();
    controller.addListener(() {});
  }

  @override
  void dispose() {
    super.dispose();
    //退出评分页面就清空保存本次评分结果的字典对象
    RateResult = {};
  }

  //自定义评分组件传入的函数myfunction

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('产品打分'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
              '${arguments["id"]}',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      // decoration: BoxDecoration(
                      //     border: Border.all(width: 1.0, color: Colors.grey)),
                      height: 150,
                      width: 150,
                      child: Image.network(
                          'http://gimg2.baidu.com/image_search/src=http%3A%2F%2Fwx1.sinaimg.cn%2Fmw690%2F4b334432gy1gvua4ict3sj20m80m83zk.jpg&refer=http%3A%2F%2Fwx1.sinaimg.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1638542981&t=9a793a2d394c37e1a75c89145bdbf70b'),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      padding: EdgeInsets.all(5),
                      width: 220,
                      child: Text(
                        '美国苹果公司研发的iPhone手机,采用了直面边框设计,支持5G,搭载A14 Boinic芯片,有黑色、白色、红色、绿色、蓝色五种颜色',
                        style: TextStyle(fontSize: 15, color: Colors.grey[600]),
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Row(
                      children: [
                        TextButton(
                          style: ButtonStyle(
                              overlayColor: MaterialStateProperty.all(
                                  Colors.transparent)),
                          onPressed: () {
                            print('hey');
                          },
                          child: Text('进入产品页面查看',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14)),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
              '参数打分',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Container(
              padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '性能散热',
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '外观质感',
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '手感',
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '拍照',
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '续航',
                          style: TextStyle(fontSize: 18),
                        )
                      ]),
                  Column(
                    children: RateBarGroups,
                  )
                ],
              )),
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
              '产品评价',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Container(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 10),
              child: TextField(
                controller: controller,
                maxLines: 5,
                maxLength: 180,
                onChanged: (text) {
                  // print(text);
                  setState(() {
                    if (text == '') {
                      errorHintText = '请您输入评价';
                      // print('文本框空了');
                    } else {
                      errorHintText = null;
                    }
                  });
                },
                decoration: InputDecoration(
                    errorText: this.errorHintText,
                    contentPadding: EdgeInsets.all(15),
                    hintText: '在此输入您对本产品的评价',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    )),
              )),
          Center(
            child: ElevatedButton(
              onPressed: () {
                print('$RateResult ${controller.text}');
              },
              child: Container(width: 100, child: Center(child: Text('提 交'))),
              style: ElevatedButton.styleFrom(
                  primary: Colors.blue[500],
                  textStyle: TextStyle(fontSize: 18),
                  elevation: 0,
                  padding: EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5))),
            ),
          ),
          Center(
              child: TextButton(
                  child: Container(
                      width: 50,
                      child: Center(
                          child: Text(
                        '重置',
                        style: TextStyle(color: Colors.grey),
                      ))),
                  onPressed: () {
                    clearText();
                    RateResult.clear();
                    setState(() {
                      RateBarGroups.clear();
                      RateBarGroups.add(MyRateBar(
                        key: Key(_getRandomKey()),
                        myfunction: (value) {
                          RateResult["performance"] = value;
                        },
                      ));
                      RateBarGroups.add(MyRateBar(
                        key: Key(_getRandomKey()),
                        myfunction: (value) {
                          RateResult["appearance"] = value;
                        },
                      ));
                      RateBarGroups.add(MyRateBar(
                        key: Key(_getRandomKey()),
                        myfunction: (value) {
                          RateResult["feel"] = value;
                        },
                      ));
                      RateBarGroups.add(MyRateBar(
                        key: Key(_getRandomKey()),
                        myfunction: (value) {
                          RateResult["camera"] = value;
                        },
                      ));
                      RateBarGroups.add(MyRateBar(
                        key: Key(_getRandomKey()),
                        myfunction: (value) {
                          RateResult["battery"] = value;
                        },
                      ));
                    });
                  })),
        ],
      ),
    );
  }
}
