import 'package:flutter/material.dart';

import '../enums/widget_color_enum.dart';


class GreenPage extends StatelessWidget {
  const GreenPage({super.key});

  static const String route = '/green-page';

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: WidgetColorEnum.green.color,
          title: Center(child: Text(WidgetColorEnum.green.title)),
        ),
        body: Center(
          child: Text(
            WidgetColorEnum.green.title,
            style: TextStyle(color: WidgetColorEnum.green.color, fontSize: 24),
          ),
        ),
      );
}
