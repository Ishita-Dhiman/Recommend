import 'package:flutter/material.dart';
import 'homescreen.dart';

class DataSearch extends SearchDelegate<String> {
  final movies = [
    'Toy Story (1995)',
    'Jumanji (1995)',
    'Grumpier Old Men (1995)',
    'Waiting to Exhale (1995)',
    'Father of the Bride Part II (1995)',
    'Heat (1995)',
    'Sabrina (1995)',
    'Tom and Huck (1995)',
    'Sudden Death (1995)',
    'GoldenEye (1995)',
    'American President, The (1995)',
    'Dracula: Dead and Loving It (1995)',
    'Balto (1995)',
    'Nixon (1995)',
    'Cutthroat Island (1995)',
    'Casino (1995)',
    'Sense and Sensibility (1995)',
    'Four Rooms (1995)',
    'Ace Ventura: When Nature Calls (1995)',
    'Money Train (1995)',
    'Get Shorty (1995)',
    'Copycat (1995)',
    'Assassins (1995)',
    'Powder (1995)',
    'Leaving Las Vegas (1995)',
    'Othello (1995)',
    'Now and Then (1995)',
    'Persuasion (1995)',
    'City of Lost Children, The (CitÃ© des enfants perdus, La) (1995)',
    'Shanghai Triad (Yao a yao yao dao waipo qiao) (1995)',
    'Dangerous Minds (1995)',
    'Twelve Monkeys (a.k.a. 12 Monkeys) (1995)',
    'Babe (1995)',
    'Dead Man Walking (1995)',
    'It Takes Two (1995)',
    'Clueless (1995)',
    'Cry, the Beloved Country (1995)',
    'Richard III (1995)',
    'Dead Presidents (1995)',
    'Restoration (1995)',
    'Mortal Kombat (1995)',
    'To Die For (1995)',
    'How to Make an American Quilt (1995)',
    'Seven (a.k.a. Se7en) (1995)',
    'Pocahontas (1995)',
    'When Night Is Falling (1995)',
    'Usual Suspects, The (1995)',
    'Mighty Aphrodite (1995)',
    'Lamerica (1994)'
  ];
  final recent_movies = [
    'Restoration (1995)',
    'Mortal Kombat (1995)',
    'To Die For (1995)',
    'How to Make an American Quilt (1995)',
    'Seven (a.k.a. Se7en) (1995)',
    'Pocahontas (1995)',
    'When Night Is Falling (1995)',
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, '');
      },
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recent_movies
        : movies.where((p) => p.startsWith(query)).toList();
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          showResults(context);
        },
        leading: Icon(Icons.movie_rounded),
        title: RichText(
            text: TextSpan(
                text: suggestionList[index].substring(0, query.length),
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
                children: [
              TextSpan(
                  text: suggestionList[index].substring(query.length),
                  style: TextStyle(
                    color: Colors.grey,
                  ))
            ])),
      ),
      itemCount: suggestionList.length,
    );
  }
}
