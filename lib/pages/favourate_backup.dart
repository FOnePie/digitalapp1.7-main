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

  //用于控制/监听Tab菜单切换
  //TabBar和TabBarView正是通过同一个controller来实现菜单切换和滑动状态同步的。

  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: tabs.length, vsync: this);
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
                print('${tabController.index}');
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

  buildBodyView() {
    //构造 TabBarView
    Widget tabBarBodyView = TabBarView(controller: tabController,
        //创建Tab页
        children: [
          //产品收藏页
          Center(
            child: Text('a'),
          ),
          //帖子收藏页
          Center(
            child: Text('b'),
          )
        ]
        );

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
