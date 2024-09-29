import 'package:flutter/material.dart';


import '../enums/widget_color_enum.dart';

class RedPage extends StatelessWidget {
  const RedPage({super.key});

  static const String route = '/red-page';

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: WidgetColorEnum.red.color,
          title: Center(child: Text(WidgetColorEnum.red.title)),
        ),
        body: Center(
          child: Text(
            WidgetColorEnum.red.title,
            style: TextStyle(color: WidgetColorEnum.red.color, fontSize: 24),
          ),
        ),
      );
}
