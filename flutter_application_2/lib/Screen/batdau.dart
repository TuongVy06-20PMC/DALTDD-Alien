import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class End extends StatefulWidget {
   End(
      {super.key,
      required this.level,
      required this.score,
      required this.exp});
  int level;
  int score;
  int exp;

  @override
  State<End> createState() => _EndState();
}

class _EndState extends State<End> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}