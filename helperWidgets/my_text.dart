import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String _text;
  // TextStyle _textStyle;
  final double _fontSize;
  final FontWeight _fontWeight;
  final Color _color;
  const MyText(this._text, this._fontSize, this._fontWeight, this._color,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      style: TextStyle(
          fontSize: _fontSize, fontWeight: _fontWeight, color: _color),
      maxLines: 2,
    );
  }
}
