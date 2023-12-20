import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _searchController = TextEditingController();
  List<String> _data = ["Apple", "Banana", "Cherry", "Date", "Grapes"];

  List<String> _filteredData = [];

  @override
  void initState() {
    super.initState();
    _filteredData.addAll(_data);
  }

  void _filterSearchResults(String query) {
    List<String> searchResults = [];
    searchResults.addAll(_data);

    if (query.isNotEmpty) {
      searchResults.retainWhere((item) => item.toLowerCase().contains(query.toLowerCase()));
    }

    setState(() {
      _filteredData.clear();
      _filteredData.addAll(searchResults);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Search Box'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              onChanged: _filterSearchResults,
              decoration: InputDecoration(
                labelText: 'Search',
                hintText: 'Enter search term',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _filteredData.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_filteredData[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
