import 'package:anim22/task_01/anim_page.dart';
import 'package:anim22/task_02/homescreen/contact_page.dart';
import 'package:anim22/task_02/utils/app_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'task_02/bloc/contact_bloc.dart';
import 'task_02/bloc/contact_favorite_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ContactBloc(),
        ),
        BlocProvider(
          create: (context) => ContactFavoriteBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        navigatorKey: AppRoute.navigatorKey,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Praktikum 22'),
        bottom: TabBar(controller: _tabController, tabs: const [
          Tab(
            text: "Animation",
          ),
          Tab(
            text: "Contact",
          )
        ]),
      ),
      body: TabBarView(
          controller: _tabController,
          children: const [AnimationPage(), ContactPage()]),
    );
  }
}
