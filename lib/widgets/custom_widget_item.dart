import 'package:flutter/material.dart';
import '../enums/widget_color_enum.dart';

class CustomWidgetItem extends StatelessWidget {
  const CustomWidgetItem({
    super.key,
    required this.value,
    required this.onTap,
  });

  final WidgetColorEnum value;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ColoredBox(
            color: value.color.withOpacity(0.3),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                value.title,
                style: TextStyle(color: value.color),
              ),
            ),
          ),
        ),
      );
}
