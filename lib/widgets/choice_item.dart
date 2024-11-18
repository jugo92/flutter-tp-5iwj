import 'package:flutter/material.dart';
import 'item.dart';

class ChoiceItem extends StatefulWidget {
  final String tag;
  final Function(String) onSelected;
  final Function(String) onRemoved;

  ChoiceItem({
    required this.tag,
    required this.onSelected,
    required this.onRemoved,
  });

  @override
  _ChoiceItemState createState() => _ChoiceItemState();
}

class _ChoiceItemState extends State<ChoiceItem> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Item(
      tag: widget.tag,
      backgroundColor: isSelected ? Colors.yellow : Colors.blue,
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
        if (isSelected) {
          widget.onSelected(widget.tag);
        } else {
          widget.onRemoved(widget.tag);
        }
      },
    );
  }
}
