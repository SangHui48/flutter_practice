import 'package:flutter/material.dart';
import 'package:material_flutter_app/imageWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material Flutter App',
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
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      // home: MaterialFlutterApp(),
      home: ImageWidgetApp(),
    );
  }
}

//  class MaterialFlutterApp extends StatefulWidget {
    
//     @override
//     State<StatefulWidget> createState() {
//       return _MaterialFlutterApp();
//     }
//   }

//   class _MaterialFlutterApp extends State<MaterialFlutterApp> {
    
//     @override
//     Widget build(BuildContext context) {
//       return Scaffold(
//         appBar: AppBar(title: Text('Material Design App')),
//         floatingActionButton: FloatingActionButton(child: Icon(Icons.add),
//           onPressed: () {

//           },
//         ),
//         body: Container(
//           child: Center(
//             child: Column(
//               children: <Widget>[
//                 Icon(Icons.android),
//                 Text('android')
//               ],
//               mainAxisAlignment: MainAxisAlignment.center,
//             ),
//           ),
//         ),
//       );
//     }
//   }
