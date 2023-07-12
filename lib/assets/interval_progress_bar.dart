import 'package:flutter/material.dart';

class IntervalProgressBar extends StatefulWidget {
  const IntervalProgressBar({Key? key}) : super(key: key);

  @override
  State<IntervalProgressBar> createState() => _IntervalProgressBarState();
}

class _IntervalProgressBarState extends State<IntervalProgressBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _bar(),
        const SizedBox(
          width: 8,
        ),
        _label(),
      ],
    );
  }

  Widget _bar() {
    return Column(
      children: [
        _interval(customColor: const Color.fromARGB(255, 66, 144, 255)),
        _interval(customColor: const Color.fromARGB(255, 94, 173, 167)),
        _interval(customColor: const Color.fromARGB(255, 118, 188, 116)),
        _interval(customColor: const Color.fromARGB(255, 13, 166, 5)),
        _interval(customColor: const Color.fromARGB(255, 144, 240, 8)),
        _interval(customColor: const Color.fromARGB(255, 235, 228, 12)),
        _interval(customColor: const Color.fromARGB(255, 179, 173, 4)),
        _interval(customColor: const Color.fromARGB(255, 240, 161, 3)),
        _interval(customColor: const Color.fromARGB(255, 206, 125, 4)),
        _interval(customColor: const Color.fromARGB(255, 243, 31, 8)),
      ],
    );
  }

  Widget _interval({required Color customColor}) {
    return SizedBox(
      width: 15.0,
      height: 3.8,
      child: DecoratedBox(
          decoration: BoxDecoration(
        color: customColor,
      )),
    );
  }

  Widget _separator() {
    return const SizedBox(
      height: 2.2,
    );
  }

  Widget _label() {
    return Column(
      children: [
        const SizedBox(
          height: 30.0,
        ),
        Text(
          '1.0',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ],
    );
  }
}
