import 'package:flutter/material.dart';

import '../enums/breakpoint.dart';

class CardViewResponsive extends StatelessWidget {
  const CardViewResponsive({super.key});

  static const String route = '/';

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

  Widget _cardContent(BuildContext context) {
    if (_widthSize(context) < Breakpoint.small.value) {
      return _contentBodyForSmallScreen(context);
    } else if (_widthSize(context) > Breakpoint.small.value &&
        _widthSize(context) < Breakpoint.medium.value) {
      return _contentBodyForMediumScreen(context);
    }
    return _contentForLargeScreen(context);
  }

  Widget _contentBodyForSmallScreen(BuildContext context) {
    return Column(
      children: [
        _cardSmall(context),
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

  Widget _contentBodyForMediumScreen(BuildContext context) {
    return Column(
      children: [
        _cardLarge(context),
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

  Widget _contentForLargeScreen(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Text('Kasra'),
            Icon(Icons.warning_amber),
            SizedBox(width: 15),
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

  double _widthSize(BuildContext context) => MediaQuery.sizeOf(context).width;
}
