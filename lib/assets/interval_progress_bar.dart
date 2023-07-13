import 'package:flutter/material.dart';

class IntervalProgressBar extends StatefulWidget {
  final int value;
  const IntervalProgressBar({Key? key, required this.value}) : super(key: key);

  @override
  State<IntervalProgressBar> createState() => _IntervalProgressBarState();
}

class _IntervalProgressBarState extends State<IntervalProgressBar> {
  List<Color> darkColors = [
    const Color.fromARGB(255, 22, 45, 67),
    const Color.fromARGB(255, 28, 55, 53),
    const Color.fromARGB(255, 33, 59, 34),
    const Color.fromARGB(255, 42, 59, 17),
    const Color.fromARGB(255, 50, 59, 18),
    const Color.fromARGB(255, 63, 60, 21),
    const Color.fromARGB(255, 71, 57, 9),
    const Color.fromARGB(255, 75, 51, 9),
    const Color.fromARGB(255, 77, 40, 15),
    const Color.fromARGB(255, 71, 29, 23)
  ];
  List<Color> brightColors = [
    const Color.fromARGB(255, 66, 144, 255),
    const Color.fromARGB(255, 94, 173, 167),
    const Color.fromARGB(255, 118, 188, 116),
    const Color.fromARGB(255, 13, 166, 5),
    const Color.fromARGB(255, 144, 240, 8),
    const Color.fromARGB(255, 235, 228, 12),
    const Color.fromARGB(255, 179, 173, 4),
    const Color.fromARGB(255, 240, 161, 3),
    const Color.fromARGB(255, 206, 125, 4),
    const Color.fromARGB(255, 243, 31, 8)
  ];
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
    List<Color> actualColors;
    if (widget.value == 0) {
      actualColors = darkColors;
    } else {
      actualColors = brightColors;
    }
    return Column(
      children: [
        _interval(customColor: actualColors[0]),
        _separator(),
        _interval(customColor: actualColors[1]),
        _separator(),
        _interval(customColor: actualColors[2]),
        _separator(),
        _interval(customColor: actualColors[3]),
        _separator(),
        _interval(customColor: actualColors[4]),
        _separator(),
        _interval(customColor: actualColors[5]),
        _separator(),
        _interval(customColor: actualColors[6]),
        _separator(),
        _interval(customColor: actualColors[7]),
        _separator(),
        _interval(customColor: actualColors[8]),
        _separator(),
        _interval(customColor: actualColors[9]),
        _separator(),
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
