import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

void main() => runApp(Search());

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.orangeAccent,
        primaryTextTheme: TextTheme(
          headline6: TextStyle(
            color: Colors.black87,
          ),
        ),
      ),
      home: SearchPage(),
    );
  }
}

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

List hints = [
  {"name": "hint1", "id": "1"},
  {"name": "hint2", "id": "2"},
  {"name": "hint3", "id": "3"},
  {"name": "hint4", "id": "4"},
  {"name": "hint5", "id": "5"},
  {"name": "hint6", "id": "6"},
  {"name": "hint7", "id": "7"},
  {"name": "hint8", "id": "8"},
];

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TypeAheadField(
          suggestionsBoxDecoration: SuggestionsBoxDecoration(
            elevation: 8.0,
          ),
          textFieldConfiguration: TextFieldConfiguration(
            decoration: InputDecoration(
              icon: Icon(Icons.search),
              hintText: 'Enter your search term...',
              suffixIcon: Icon(Icons.close),
            ),
          ),
          suggestionsCallback: (pattern) async {
            return hints;
          },
          itemBuilder: (context, suggestion) {
            return ListTile(
              title: Text(suggestion['name']),
            );
          },
          onSuggestionSelected: (suggestion) {
            // what happens when someone clicks on the hints
          },
        ),
      ),
      body: Center(
        child: Text('Body Text'),
      ),
    );
  }
}
