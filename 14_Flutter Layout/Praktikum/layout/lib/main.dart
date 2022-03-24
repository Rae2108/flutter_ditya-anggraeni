import 'package:flutter/material.dart';
import 'chatmodel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          children: const [
            ChatView(),
          ],
        ),
      ),
    );
  }
}

class ChatView extends StatelessWidget {
  const ChatView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int a = 0;
    return SingleChildScrollView(
      child: Column(
        children: 
        List.generate(itemsChat.length, (index) => 
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: 
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 55,
                  width: 55,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(itemsChat[index].profile),
                  ),
                ),
                const SizedBox(
                  width: 7
                ),
                Expanded(
                  child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                      child: Row(
                        children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(itemsChat[index].name, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                              const SizedBox(height: 10,),
                              Text(itemsChat[index].message, style: const TextStyle(fontSize: 12, color: Colors.grey),)
                            ],
                          )),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(itemsChat[index].time, style: const TextStyle(fontSize: 13)),
                            CircleAvatar(
                              backgroundColor: Colors.blue,
                              radius: 8,
                              child: Text("${a++}", style: const TextStyle(fontSize: 10),), 
                    )
                          ],
                        ),
                      ],),
                    ),
                const Divider(
                )
                  ],
                ),
                ),
              ],
            ),
          ),)
      ),
    );
  }
}