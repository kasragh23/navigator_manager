import 'package:flutter/material.dart';
import 'package:navigator_manager/enums/breakpoint.dart';
import 'package:navigator_manager/widgets/custom_widget_item.dart';
import 'package:navigator_manager/pages/green_page.dart';
import 'package:navigator_manager/pages/red_page.dart';
import 'package:navigator_manager/pages/blue_page.dart';
import 'package:navigator_manager/pages/yellow_page.dart';

import '../enums/widget_color_enum.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const String route = '/home';

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple.shade300,
          title: const Center(
            child: Text(
              'Home page',
              style: TextStyle(color: Colors.lime),
            ),
          ),
        ),
        body: _cardContent(context),
      );

  Widget _item(BuildContext context) => DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.purple.withOpacity(0.2),
          borderRadius: BorderRadius.circular(8),
        ),
      );

  Widget _fontSize(BuildContext context) {
    if (_widthSize(context) < Breakpoint.small.value) {
      return _contentBodyForLargeScreen(context);
    } else if (_widthSize(context) > Breakpoint.small.value &&
        _widthSize(context) < Breakpoint.medium.value) {
      return _contentBodyForMediumScreen(context);
    }
    return _contentBodyForLargeScreen(context);
  }

  Widget _body(BuildContext context) => Center(
        child: _contentBodyForLargeScreen(context),
      );

  Widget _cardContent(BuildContext context) {
    if (_widthSize(context) < Breakpoint.small.value) {
      _contentBodyForSmallScreen(context);
    } else if (_widthSize(context) > Breakpoint.small.value &&
        _widthSize(context) < Breakpoint.medium.value) {
      _contentBodyForMediumScreen(context);
    }

    return _contentBodyForMediumScreen(context);
  }

  Widget _contentBody(BuildContext context) {
    if (_widthSize(context) < Breakpoint.small.value) {
      return _contentBodyForLargeScreen(context);
    } else if (_widthSize(context) > Breakpoint.small.value &&
        _widthSize(context) < Breakpoint.medium.value) {
      return _contentBodyForMediumScreen(context);
    }
    return _contentBodyForLargeScreen(context);
  }

  Column _contentBodyForSmallScreen(BuildContext context) {
    return Column(
      children: [
        _red(context),
        _blue(context),
        _green(context),
        _yellow(context),
      ],
    );
  }

  Column _contentBodyForMediumScreen(BuildContext context) {
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          _red(context),
          _blue(context),
        ]),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _red(context),
            _blue(context),
            _green(context),
            _yellow(context),
          ],
        ),
      ],
    );
  }

  Widget _contentBodyForLargeScreen(BuildContext context) {
    return Row(
      children: [
        _red(context),
        _blue(context),
        _green(context),
        _yellow(context),
      ],
    );
  }

  Widget _cardSmall(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.warning_amber),
        const Column(
          children: [
            Text('Kasra'),
            SizedBox(
              height: 10,
            ),
            Text('Hello'),
          ],
        ),
        IconButton(
            onPressed: () {
              return;
            },
            icon: const Icon(Icons.cancel_outlined))
      ],
    );
  }

  Widget _cardLarge(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Icon(Icons.warning_amber),
            SizedBox(width: 15),
            Text('Kasra'),
          ],
        ),
        Row(children: [
          const Text('Hello'),
          const SizedBox(width: 15),
          IconButton(
              onPressed: () {
                return;
              },
              icon: const Icon(Icons.cancel_outlined))
        ]),
      ],
    );
  }

  Widget _red(BuildContext context) => CustomWidgetItem(
        onTap: () => _goToRedPage(context),
        value: WidgetColorEnum.red,
      );

  Widget _blue(BuildContext context) => CustomWidgetItem(
        onTap: () => _goToBluePage(context),
        value: WidgetColorEnum.blue,
      );

  Widget _green(BuildContext context) => CustomWidgetItem(
        onTap: () => _goGreenPage(context),
        value: WidgetColorEnum.green,
      );

  Widget _yellow(BuildContext context) => CustomWidgetItem(
        onTap: () => _goToYellowPage(context),
        value: WidgetColorEnum.yellow,
      );

  void _goToRedPage(BuildContext context) {
    Navigator.pushNamed(context, RedPage.route);
  }

  void _goToBluePage(BuildContext context) {
    Navigator.pushNamed(context, BluePage.route);
  }

  void _goGreenPage(BuildContext context) {
    Navigator.pushNamed(context, GreenPage.route);
  }

  void _goToYellowPage(BuildContext context) {
    Navigator.pushNamed(context, YellowPage.route);
  }

  double _widthSize(BuildContext context) => MediaQuery.sizeOf(context).width;
}
