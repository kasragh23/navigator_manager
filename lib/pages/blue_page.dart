import 'package:flutter/material.dart';

import '../enums/widget_color_enum.dart';


class BluePage extends StatelessWidget {
  const BluePage({super.key});

  static const String route = '/blue-page';

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: WidgetColorEnum.blue.color,
          title: Center(child: Text(WidgetColorEnum.blue.title)),
        ),
        body: Center(
          child: Text(
            WidgetColorEnum.blue.title,
            style: TextStyle(color: WidgetColorEnum.blue.color, fontSize: 24),
          ),
        ),
      );
}
