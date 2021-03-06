import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'navBar.dart';
import 'route/route.dart' as route;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // final wordPair = WordPair.random();
    // materialApp with show scrolling bar listview
    // return MaterialApp(
    //   title: "Listview with scrollbar",
    //   home: Scaffold(
    //     appBar: AppBar(
    //       title: const Text('Listview Random Words with scrollbar'),
    //     ),
    //     body:const Center(
    //       child: RandomWords(),
    //     ),
    //   ),
    // );
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      onGenerateRoute: route.controller,
      initialRoute: route.loginPage,
    );
    //basic
    //material infinite scrolling listview
    // return const MaterialApp(
    //
    //   title: 'Startup name generator',
    //   home: RandomWords(),
    // );
    //material basic
    // return MaterialApp(
    //     title: 'Welcome to Flutter',
    //     home: Scaffold(
    //       appBar: AppBar(
    //         //title yang muncul adalah yang ini
    //         title : const Text('Welcome To Flutter Start'),
    //       ),
    //       //random word show 2 with class RandomWords extends satatefullwidget
    //       body: const Center(
    //         child: RandomWords(),
    //       ),
    //       //random word show 1
    //       // body: Center(
    //       //     child : Text(wordPair.asPascalCase)
    //       // ),
    //       //basic
    //       // body:const Center(
    //       //     child : Text('Hello World')
    //       // ),
    //     ),
    // );
    //basic event create new
    // return MaterialApp(
    //   title: 'Flutter Demo',
    //   theme: ThemeData(
    //     primarySwatch: Colors.blue,
    //   ),
    //   home: const MyHomePage(title: 'Flutter Demo Home Page'),
    // );
  }
}

class RandomWords extends StatefulWidget{
  const RandomWords({Key?key}):super(key:key);

  @override
  _RandomWordsState  createState() => _RandomWordsState ();
}

//show random word with listview with show scrolbar
class _RandomWordsState  extends State<RandomWords>{
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);
  final ScrollController _firstController = ScrollController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
        drawer:navBar(),
      appBar: AppBar(
        title : const Text('Random Word with scrollbar'),
      ),
      body :  LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Row(
        children: <Widget>[
          SizedBox(
              width: constraints.maxWidth,
              // Only one scroll position can be attached to the
              // PrimaryScrollController if using Scrollbars. Providing a
              // unique scroll controller to this scroll view prevents it
              // from attaching to the PrimaryScrollController.
              child: Scrollbar(
                isAlwaysShown: true,
                controller: _firstController,
                child: ListView.builder(
                  controller: _firstController,
                  itemCount: 50,
                  padding: const EdgeInsets.all(16.0),
                  itemBuilder: (context,i){
                    if(i.isOdd) return const Divider();

                    final index = i~/2;
                    if(index >= _suggestions.length){
                      _suggestions.addAll(generateWordPairs().take(10));
                    }
                    return ListTile(
                      title : Text(
                        _suggestions[index].asPascalCase,
                        style: _biggerFont,
                      ),
                    );

                  },
                ),
              )),

        ],
      );
    })

    );

  }
}

// show random word with material infinite scrolling listview
// class _RandomWordsState  extends State<RandomWords>{
//   final _suggestions = <WordPair>[];
//   final _biggerFont = const TextStyle(fontSize: 18.0);
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Startup Name Generator listview'),
//       ),
//       body: ListView.builder(
//           padding: const EdgeInsets.all(16.0),
//           itemBuilder: (context,i){
//             if(i.isOdd) return const Divider();
//
//             final index = i~/2;
//             if(index >= _suggestions.length){
//               _suggestions.addAll(generateWordPairs().take(10));
//             }
//             return ListTile(
//               title : Text(
//                 _suggestions[index].asPascalCase,
//                 style: _biggerFont,
//               ),
//             );
//
//         },
//       ),
//     );
//   }
// }

//to random word show 2 with class RandomWords extends StatefullWidget
// class _RandomWordsState  extends State<RandomWords>{
//   @override
//   Widget build(BuildContext context){
//     final wordPair = WordPair.random();
//     return Text(wordPair.asPascalCase);
//   }
// }

//basic event create new
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);
//
//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.
//
//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
