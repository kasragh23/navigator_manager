import 'package:flutter/material.dart';

import '../enums/widget_color_enum.dart';
class YellowPage extends StatelessWidget {
  const YellowPage({super.key});

  static const String route = '/yellow-page';

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: WidgetColorEnum.yellow.color,
      title: Center(child: Text(WidgetColorEnum.yellow.title)),
    ),
    body: Center(
      child: Text(
        WidgetColorEnum.yellow.title,
        style: TextStyle(
            color: WidgetColorEnum.yellow.color,
            fontSize: 24
        ),
      ),
    ),
  );
}
