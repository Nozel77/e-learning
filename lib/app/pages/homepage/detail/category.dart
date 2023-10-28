import 'package:flutter/cupertino.dart';

class SldierCategory extends StatelessWidget {
  const SldierCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text("Design"),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text("Art"),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text("Mathematics"),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text("Computer Science"),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text("Computer Science"),
          ),
        ],
      ),
    );
  }
}
