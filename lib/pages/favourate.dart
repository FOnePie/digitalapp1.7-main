import 'package:flutter/material.dart';

class TabBarAndTopTab extends StatefulWidget {
  final arguments;
  TabBarAndTopTab({this.arguments});

  @override
  _DemoStateWidgetState createState() =>
      _DemoStateWidgetState(arguments: {this.arguments});
}

class _DemoStateWidgetState extends State<TabBarAndTopTab>
    with SingleTickerProviderStateMixin {
  final arguments;
  _DemoStateWidgetState({this.arguments});

  List tabs = ["产品", "帖子"];

//------------------------------------------------
  List<Map> _list = []; //列表
  List<String> deleteIds = []; //要删除的ID数组
  bool _isOff = true; //相关组件显示隐藏控制，true代表隐藏
  bool _checkValue = false; //总的复选框控制开关
//------------------------------------------------
  List<Map> _list2 = []; //列表
  List<String> deleteIds2 = []; //要删除的ID数组
  bool _isOff2 = true; //相关组件显示隐藏控制，true代表隐藏
  bool _checkValue2 = false; //总的复选框控制开关

  //用于控制/监听Tab菜单切换
  //TabBar和TabBarView正是通过同一个controller来实现菜单切换和滑动状态同步的。

  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: tabs.length, vsync: this);
    //--------------------------------------------------
    for (var index = 0; index <= 8; index++) {
      Map _temp = {};
      _temp['id'] = index;
      _temp['select'] = false;
      _list.add(_temp);
    }
    for (var index = 0; index <= 8; index++) {
      Map _temp = {};
      _temp['id'] = index;
      _temp['select'] = false;
      _list2.add(_temp);
    }
    setState(() {
      _list = _list;
      _list2 = _list2;
    });
    //--------------------------------------------------
  }

  @override
  void didChangeDependencies() {
    ///在initState之后调 Called when a dependency of this [State] object changes.
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return buildTabScaffold();
  }

  //通过bottom属性来添加一个导航栏底部tab按钮组
  Widget buildTabScaffold() {
    return Scaffold(
      appBar: AppBar(
        title: Text('收藏夹'),
        bottom: buildTabBar(),
        centerTitle: true,
        actions: [
          TextButton(
              style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.transparent)),
              onPressed: () {
                if (tabController.index == 0) {
                  _list.forEach((f) {
                    f['select'] = false; //列表设置为未选中
                  });
                  this.deleteIds = []; //重置选中的ID数组
                  setState(() {
                    this._isOff = !this._isOff; //显示隐藏总开关
                    this._checkValue = false; //所以复选框设置为未选中
                    this._list = _list;
                  });
                } else {
                  _list2.forEach((f) {
                    f['select'] = false;
                  });
                  this.deleteIds2 = [];
                  setState(() {
                    this._isOff2 = !this._isOff2;
                    this._checkValue2 = false;
                    this._list2 = _list2;
                  });
                }
              },
              child: Text('编辑',
                  style: TextStyle(color: Colors.white, fontSize: 16)))
        ],
      ),

      //设置选项卡对应的page
      body: buildBodyView(),
    );
  }

  //当整个页面dispose时，记得把控制器也dispose掉，释放内存
  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  //底部操作样式
  Widget getItemBottom(int idx) {
    var isOff = idx == 0 ? _isOff : _isOff2;
    var checkValue = idx == 0 ? _checkValue : _checkValue2;
    var list = idx == 0 ? _list : _list2;
    var delIds = idx == 0 ? deleteIds : deleteIds2;
    return Offstage(
      offstage: isOff,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    offset: Offset(-1.0, 1.0), //阴影x轴偏移量
                    blurRadius: 8, //阴影模糊程度
                    spreadRadius: 1 //阴影扩散程度
                    )
              ],
            ),
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Checkbox(
                      value: checkValue,
                      onChanged: (value) {
                        selectAll(value, idx);
                      },
                    ),
                    Text('全选',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black54)),
                  ],
                ),
                InkWell(
                  child: Text(
                    '删除    ',
                    style: TextStyle(
                        color: Colors.red[600], fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    var list = idx == 0 ? _list : _list2;
                    setState(() {
                      delIds.forEach((e) {
                        list.removeWhere((w) => w["id"].toString() == e);
                      });
                    });
                    // print(_list);
                  },
                ),
              ],
            )),
      ),
    );
  }

  //底部复选框的操作逻辑
  selectAll(value, int idx) {
    if (idx == 0) {
      this.deleteIds = []; //要删除的数组ID重置
      _list.forEach((f) {
        f['select'] = value;
        if (value == true) {
          //如果是选中，则将数据ID放入数组
          this.deleteIds.add(f['id'].toString());
        }
      });
      setState(() {
        _checkValue = value;
        _list = _list;
      });
    } else {
      this.deleteIds2 = []; //要删除的数组ID重置
      _list.forEach((f) {
        f['select'] = value;
        if (value == true) {
          //如果是选中，则将数据ID放入数组
          this.deleteIds2.add(f['id'].toString());
        }
      });
      setState(() {
        _checkValue2 = value;
        _list2 = _list2;
      });
    }
  }

  //列表
  Widget getItemContent(int idx) {
    var list = idx == 0 ? _list : _list2;
    return ListView.builder(
      itemBuilder: (context, index) {
        return _createGridViewItem(list[index], idx);
      },
      itemCount: (list == null) ? 0 : list.length,
    );
  }

  //单个card
  Widget _createGridViewItem(item, int idx) {
    var isOff = idx == 0 ? _isOff : _isOff2;
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 5, 8, 5),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  offset: Offset(-1.0, 1.0), //阴影x轴偏移量
                  blurRadius: 8, //阴影模糊程度
                  spreadRadius: 1 //阴影扩散程度
                  )
            ],
            borderRadius: BorderRadius.all(Radius.circular(10))),
        height: 130,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Offstage(
              offstage: isOff,
              child: Checkbox(
                value: item['select'],
                onChanged: (value) {
                  if (idx == 0) {
                    if (value == false) {
                      this.deleteIds.remove(item['id'].toString());
                    } else {
                      this.deleteIds.add(item['id'].toString());
                    }
                  } else {
                    if (value == false) {
                      this.deleteIds2.remove(item['id'].toString());
                    } else {
                      this.deleteIds2.add(item['id'].toString());
                    }
                  }
                  setState(() {
                    item['select'] = value;
                  });
                },
              ),
            ),
            idx == 0
                //产品卡片内容
                ? Container(
                    child: Row(
                      children: [
                        Text('产品种类'),
                        SizedBox(
                          width: 20,
                        ),
                        Text('${item}'),
                        SizedBox(
                          width: 20,
                        ),
                        Text('产品图片')
                      ],
                    ),
                  )
                //帖子卡片内容
                : Container(
                    child: Row(
                      children: [
                        Text('帖子图片'),
                        SizedBox(width: 10),
                        Text('${item}'),
                        SizedBox(
                          width: 20,
                        ),
                        Text('帖子内容')
                      ],
                    ),
                  )
          ],
        ),
      ),
    );
  }

  //主内容
  Widget getItem(int idx) {
    var list = idx == 0 ? _list : _list2;
    if (list.isEmpty) {
      return Center(child: Text('暂无收藏'));
    } else {
      return Container(
        padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            getItemContent(idx), //这里是列表的内容
            getItemBottom(idx), //这里是底部删除全选操作的内容
          ],
        ),
      );
    }
  }

  buildBodyView() {
    //构造 TabBarView
    Widget tabBarBodyView = TabBarView(controller: tabController,
        //创建Tab页
        children: [
          //产品收藏页
          Container(child: getItem(0)),
          //帖子收藏页
          Container(child: getItem(1)),
        ]);

    return tabBarBodyView;
  }

  buildTabBar() {
    //构造 TabBar
    Widget tabBar = TabBar(
        // onTap: (index) {
        //   setState(() {});
        // },
        //tabs 的长度超出屏幕宽度后，TabBar，是否可滚动
        //设置为false tab 将平分宽度，为true tab 将会自适应宽度
        isScrollable: false,
        //设置tab文字得类型
        labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        //设置tab选中得颜色
        labelColor: Colors.white,
        //设置tab未选中得颜色
        unselectedLabelColor: Colors.white70,
        indicatorColor: Colors.blue,
        // 设置指示器颜色
        //indicatorWight 设置指示器厚度
        //indicatorPadding
        //indicatorSize  设置指示器大小计算方式
        ///指示器大小计算方式，TabBarIndicatorSize.label跟文字等宽,TabBarIndicatorSize.tab跟每个tab等宽
        indicatorSize: TabBarIndicatorSize.tab,
        //生成Tab菜单
        controller: tabController,
        //构造Tab集合
        tabs: tabs.map((e) => Tab(text: e)).toList());
    return tabBar;
  }
}
