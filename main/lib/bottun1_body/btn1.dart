import 'package:flutter/material.dart';

class cool extends StatefulWidget {
  const cool({Key? key}) : super(key: key);

  @override
  State<cool> createState() => _coolState();
}

class _coolState extends State<cool> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            color: Colors.lime,
            height: 200,
          ),
        ],
      ),
    );
  }
}
