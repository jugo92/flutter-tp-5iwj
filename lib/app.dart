import 'package:flutter/material.dart';
import 'widgets/header.dart';
import 'widgets/footer.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> selectedTags = [];

  void addTag(String tag) {
    setState(() {
      if (!selectedTags.contains(tag)) {
        selectedTags.add(tag);
      }
    });
  }

  void removeTag(String tag) {
    setState(() {
      selectedTags.remove(tag);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Flex(
        direction: Axis.vertical,
        children: [
          Expanded(
            flex: 3,
            child: Header(
              selectedTags: selectedTags,
            ),
          ),
          Expanded(
            flex: 1,
            child: Footer(
              onTagSelected: addTag,
              onTagRemoved: removeTag,
            ),
          ),
        ],
      ),
    );
  }
}
