import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../states/my_app_state.dart';

class FavoritePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    List<Widget> favList = appState.favorites.map((f) => ListTile(leading: Icon(Icons.favorite), title: Text(f.asLowerCase))).toList();
    if (appState.favorites.isEmpty){
      return Center(child: Text('No favorites yet'));
    }

    return ListView(
      children: [
        Padding(padding: const EdgeInsets.all(20),
          child: Text('You have ${appState.favorites.length} favorites:')),
            ...favList,
      ],
    );
  }
}