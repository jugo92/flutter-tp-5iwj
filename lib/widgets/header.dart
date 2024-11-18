import 'package:flutter/material.dart';
import 'item.dart';

class Header extends StatelessWidget {
  final List<String> selectedTags;

  Header({required this.selectedTags});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      padding: EdgeInsets.all(16),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Vos Choix",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 8),
          if (selectedTags.isEmpty)
            Text(
              "Cliquez sur les choix en dessous!",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          SizedBox(height: 16),
          Wrap(
            spacing: 8,
            children: selectedTags.map((tag) {
              return Item(
                tag: tag,
                backgroundColor: Colors.white,
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
