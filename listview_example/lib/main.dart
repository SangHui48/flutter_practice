import 'package:flutter/material.dart';
import 'package:listview_example/sub/firstPage.dart';
import 'package:listview_example/sub/secondPage.dart';
import './animalItem.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'TabBar Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{
  TabController? controller;
  List<Animal> animalList = new List.empty(growable: true);
  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);

    animalList.add(Animal(animalName: "???", kind: "??????", imagePath: 'repo/images/bee.png'));
    animalList.add(Animal(animalName: "?????????", kind: "?????????", imagePath: 'repo/images/cat.png'));
    animalList.add(Animal(animalName: "??????", kind: "?????????", imagePath: 'repo/images/cow.png'));
    animalList.add(Animal(animalName: "?????????", kind: "?????????", imagePath: 'repo/images/dog.png'));
    animalList.add(Animal(animalName: "??????", kind: "?????????", imagePath: 'repo/images/fox.png'));
    animalList.add(Animal(animalName: "?????????", kind: "?????????", imagePath: 'repo/images/monkey.png'));
    animalList.add(Animal(animalName: "??????", kind: "?????????", imagePath: 'repo/images/wolf.png'));
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Listview Example'),
      ),
      body: TabBarView(
        children: [FirstApp(list: animalList), SecondApp()],
        controller: controller,
      ),
      bottomNavigationBar: TabBar(tabs: [
        Tab(icon: Icon(Icons.looks_one, color: Colors.blue,),),
        Tab(icon: Icon(Icons.looks_two, color: Colors.blue,),)
      ], controller: controller,),
    );
  }
}
