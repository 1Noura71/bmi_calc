import 'package:flutter/material.dart';

class ReusableContainer extends StatelessWidget {
  final Color color;
  final Widget? containerChild;
  final Function()? onPress;

  const ReusableContainer(
      {required this.color, this.containerChild, Key? key, this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: containerChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Color(0xff1d1e33),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
