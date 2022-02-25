import 'package:flutter/material.dart';
import 'package:my_project_flutter/navBar.dart';
import 'package:english_words/english_words.dart';
import 'package:my_project_flutter/route/route.dart' as route;

class RandomWordsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        drawer:navBar(),
    appBar: AppBar(
    title : const Text('Random Word with scrollbar'),
      centerTitle:false,
      backgroundColor:Colors.cyan[900],
      //shadow bottom
      elevation:20.3,
      actions: [
        Center(
          child: Text('+1'),
        ),
        IconButton(
          icon : Icon(Icons.notifications),
          onPressed: () => Navigator.pushNamed(context,route.notificationsPage),
        ),
      ],
    ),
    body : Center(
      child: RandomWordsClass(),
    ),
    );
  }
}

class RandomWordsClass extends StatefulWidget{
  const RandomWordsClass({Key?key}):super(key:key);

  @override
  _RandomWordsClassState  createState() => _RandomWordsClassState ();
}

//show random word with listview with show scrolbar
class _RandomWordsClassState  extends State<RandomWordsClass>{
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);
  final ScrollController _firstController = ScrollController();

  @override
  Widget build(BuildContext context){
    return LayoutBuilder(
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
            });


  }
}
