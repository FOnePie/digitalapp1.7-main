import 'package:flutter/material.dart';

class PhonePage extends StatelessWidget {
  final arguments;
  PhonePage({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            tooltip: '打个分吧~',
            onPressed: () {
              Navigator.pushNamed(context, '/phoneGrade', arguments: arguments);
            },
            backgroundColor: Colors.white,
            child: Icon(Icons.edit, size: 30, color: Colors.purple)),
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.purple[200],
        appBar: AppBar(
          title: Text('产品详情'),
          centerTitle: true,
          actions: [
            TextButton(
                style: ButtonStyle(
                    overlayColor:
                        MaterialStateProperty.all(Colors.transparent)),
                onPressed: () {
                  print('按到了');
                },
                child: Text('收藏',
                    style: TextStyle(color: Colors.white, fontSize: 16)))
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/bg.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
              margin: EdgeInsets.only(top: 100.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: MediaQuery.removePadding(
                  //加上这层来去掉单独使用ListView带来的顶部空白
                  context: context,
                  removeTop: true,
                  child: ListView(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1.0, color: Colors.grey)),
                                height: 150,
                                width: 150,
                                child: Image.network(
                                    'http://gimg2.baidu.com/image_search/src=http%3A%2F%2Fwx1.sinaimg.cn%2Fmw690%2F4b334432gy1gvua4ict3sj20m80m83zk.jpg&refer=http%3A%2F%2Fwx1.sinaimg.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1638542981&t=9a793a2d394c37e1a75c89145bdbf70b'),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 25,
                              ),
                              Container(
                                width: 200,
                                child: Text('${arguments["id"]}',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis),
                              ),
                              Row(
                                children: [
                                  Text(
                                    '价格 ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    '￥8999',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.purple[300]),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    '综合得分 ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    '4.9',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.purple[300]),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10.0),
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(195, 196, 243, 0.5),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(14))),
                                width: 190,
                                height: 85,
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 5),
                                          Row(children: [
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Icon(Icons.extension),
                                            SizedBox(width: 5.0),
                                            Text('SOC型号')
                                          ]),
                                          Row(children: [
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Icon(Icons.smart_screen_rounded),
                                            SizedBox(width: 5.0),
                                            Text('分辨率')
                                          ]),
                                          Row(children: [
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Icon(Icons.today_rounded),
                                            SizedBox(width: 5.0),
                                            Text('上市时间')
                                          ]),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          SizedBox(height: 9),
                                          Row(
                                            children: [
                                              Text(
                                                'Kirin 9000',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
                                          ),
                                          SizedBox(height: 9),
                                          Row(
                                            children: [
                                              Text('1920x1080',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold))
                                            ],
                                          ),
                                          SizedBox(height: 8),
                                          Row(
                                            children: [
                                              Text('2021/2/1',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold))
                                            ],
                                          )
                                        ],
                                      ),
                                      SizedBox(width: 5)
                                    ]),
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                              margin: EdgeInsets.fromLTRB(12, 0, 12, 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('屏幕',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24.0)),
                                  SizedBox(height: 5),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    child: Column(children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('屏幕型号',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                          SizedBox(width: 40),
                                          Container(
                                              width: 250,
                                              child: Text('三星/京东方/LG',
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis)),
                                        ],
                                      ),
                                      SizedBox(height: 5),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('屏幕刷新率',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                          SizedBox(width: 10),
                                          Container(
                                              width: 250, child: Text('90Hz')),
                                        ],
                                      ),
                                    ]),
                                    width: 368,
                                    decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  )
                                ],
                              ))
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                              margin: EdgeInsets.fromLTRB(12, 0, 12, 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('芯片',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24.0)),
                                  SizedBox(height: 5),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    child: Column(children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('CPU',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                          SizedBox(width: 40),
                                          Container(
                                              width: 250,
                                              child: Text(
                                                  '1 A76X3.13GHz + 3 A76x2.54GHz + 4 A55x2.05Ghz',
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis)),
                                        ],
                                      ),
                                      SizedBox(height: 5),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('GPU',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                          SizedBox(width: 10),
                                          Container(
                                              width: 250,
                                              child: Text('Mali G78 MC24')),
                                        ],
                                      ),
                                    ]),
                                    width: 368,
                                    decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  )
                                ],
                              ))
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                              margin: EdgeInsets.fromLTRB(12, 0, 12, 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('相机',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24.0)),
                                  SizedBox(height: 5),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    child: Column(children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('相机传感器型号',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                          SizedBox(width: 10),
                                          Container(
                                              width: 200,
                                              child: Text('索尼 IMX700',
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis)),
                                        ],
                                      ),
                                    ]),
                                    width: 368,
                                    decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  )
                                ],
                              ))
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                              margin: EdgeInsets.fromLTRB(12, 0, 12, 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('存储',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24.0)),
                                  SizedBox(height: 5),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text('内存容量',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                    SizedBox(width: 5),
                                                    Container(
                                                        child: Text('8GB'))
                                                  ],
                                                ),
                                                SizedBox(height: 5),
                                                Row(
                                                  children: [
                                                    Text('',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                    SizedBox(width: 5),
                                                    Container(child: Text('')),
                                                  ],
                                                ),
                                                SizedBox(height: 5),
                                                Row(
                                                  children: [
                                                    Text('闪存容量',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                    SizedBox(width: 5),
                                                    Container(
                                                        child: Text(
                                                            '128G/256G/512G')),
                                                  ],
                                                ),
                                              ]),
                                          Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Text('内存频率',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                    SizedBox(width: 5),
                                                    Container(
                                                        child: Text('暂无')),
                                                    SizedBox(width: 60)
                                                  ],
                                                ),
                                                SizedBox(height: 5),
                                                Row(
                                                  children: [
                                                    Text('内存型号',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                    SizedBox(width: 5),
                                                    Container(
                                                        child: Text('LPDDR4X')),
                                                  ],
                                                ),
                                                SizedBox(height: 5),
                                                Row(
                                                  children: [
                                                    Text('闪存型号',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                    SizedBox(width: 5),
                                                    Container(
                                                        child: Text('UFS3.1')),
                                                  ],
                                                ),
                                              ])
                                        ]),
                                    width: 368,
                                    decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  )
                                ],
                              ))
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                              margin: EdgeInsets.fromLTRB(12, 0, 12, 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('其他',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24.0)),
                                  SizedBox(height: 5),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text('重量',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                    SizedBox(width: 5),
                                                    Container(
                                                        child: Text('212g'))
                                                  ],
                                                ),
                                                SizedBox(height: 5),
                                                Row(
                                                  children: [
                                                    Text('电池容量',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                    SizedBox(width: 5),
                                                    Container(
                                                        child: Text('4400mAh')),
                                                  ],
                                                ),
                                              ]),
                                          Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Text('厚度',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                    SizedBox(width: 5),
                                                    Container(
                                                        child: Text('9.1mm')),
                                                    SizedBox(width: 80)
                                                  ],
                                                ),
                                                SizedBox(height: 5),
                                                Row(
                                                  children: [
                                                    Text('续航',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                    SizedBox(width: 5),
                                                    Container(
                                                        child: Text('暂无')),
                                                  ],
                                                ),
                                              ])
                                        ]),
                                    width: 368,
                                    decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  )
                                ],
                              ))
                        ],
                      ),
                    ],
                  ))),
        ));
  }
}
