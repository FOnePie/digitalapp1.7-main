import 'package:flutter/material.dart';
import '../index/index.dart';
import '../pages/phone.dart';
import '../pages/phoneGrade.dart';
import '../pages/favourate.dart';
import '../pages/prefer.dart';
import '../pages/recommend.dart';
import '../pages/search.dart';
import '../pages/searchpost.dart';
import '../pages/newedit.dart';
import '../pages/post.dart';
// import '../pages/changeedit.dart';

class TabsPage extends StatelessWidget {
  final arguments;
  TabsPage({this.arguments});
  final routes = {
    '/phone': (context, {arguments}) => PhonePage(arguments: arguments),
    '/phoneGrade': (context, {arguments}) =>
        PhoneGradePage(arguments: arguments),
    '/favourate': (context, {arguments}) =>
        TabBarAndTopTab(arguments: {arguments}),
    '/prefer': (context, {arguments}) => PreferPage(arguments: {arguments}),
    '/recommend': (context, {arguments}) =>
        RecommendPage(arguments: {arguments}),
    '/newedit': (context, {arguments}) => NewEditPage(arguments: {arguments}),
    // '/changeedit': (context, {arguments}) =>
    //     ChangeEditPage(arguments: {arguments}),
    '/search': (context, {arguments}) => SearchPage(arguments: {arguments}),
    '/searchpost': (context, {arguments}) =>
        SearchPostPage(arguments: {arguments}),
    '/post': (context, {arguments}) => PostPage(arguments: {arguments}),
  };
  @override
  Widget build(BuildContext context) {
    print('MyApp build()');
    return MaterialApp(
        // ignore: missing_return
        onGenerateRoute: (RouteSettings settings) {
          final String name = settings.name;
          final Function pageContentBuilder = this.routes[name];
          if (pageContentBuilder != null) {
            if (settings.arguments != null) {
              final Route route = MaterialPageRoute(
                  builder: (context) => pageContentBuilder(context,
                      arguments: settings.arguments));
              return route;
            } else {
              final Route route = MaterialPageRoute(
                  builder: (context) => pageContentBuilder(context));
              return route;
            }
          }
        },
        debugShowCheckedModeBanner: false,
        title: '导航栏demo',
        theme: ThemeData(
          primaryColor: Colors.deepPurple,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: index());
  }
}
