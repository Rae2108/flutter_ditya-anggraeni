import 'package:flutter/cupertino.dart';
import 'bottom.dart';
void main() => runApp(const Home2());


class Home2 extends StatefulWidget {
  const Home2({ Key? key }) : super(key: key);

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  int? groupValue = 0;
  @override
  Widget build(BuildContext context) {
     return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               const Text("Edit", style: TextStyle(color: Color.fromARGB(255, 97, 179, 247), fontSize: 16),),
               const Text("Chats", style: TextStyle(fontWeight: FontWeight.bold),),
               CupertinoButton(child: const Icon(CupertinoIcons.square_pencil), onPressed: (){})
               ],
            ),
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 5,
              ),
              buildSearchField(),
              const SizedBox(
                height: 5,
              ),
              CupertinoSlidingSegmentedControl<int>(
                groupValue: groupValue,
                children: {
                  0: buildSegment("All Chats"),
                  1: buildSegment("Work"),
                  2: buildSegment("Unread"),
                  3: buildSegment("Personal"),
                }, 
                onValueChanged: (value){
                  setState(() {
                    groupValue = value;
                  });
                }),
                const Expanded(child: BottomNav()),
              ]
          ),
        ))
        
    );
  }
}

buildSearchField() {
    return const CupertinoSearchTextField(
        placeholder: "Search...",
        prefixIcon: Icon(CupertinoIcons.search),
        );
  }

buildSegment(String text){
  return Text(text,style: const TextStyle(fontSize: 14,
      color: CupertinoColors.systemGrey));
}