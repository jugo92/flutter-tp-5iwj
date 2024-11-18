import 'package:flutter/material.dart';
import 'choice_item.dart';

class Footer extends StatelessWidget {
  final Function(String) onTagSelected;
  final Function(String) onTagRemoved;

  Footer({required this.onTagSelected, required this.onTagRemoved});

  final List<String> allTags = [
    "Flutter", "Dart", "Firebase", "Android", "iOS", "Web", "Mobile", "UI/UX"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Wrap(
          spacing: 8,
          children: allTags.map((tag) {
            return ChoiceItem(
              tag: tag,
              onSelected: onTagSelected,
              onRemoved: onTagRemoved,
            );
          }).toList(),
        ),
      ),
    );
  }
}
