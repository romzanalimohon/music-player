import 'package:flutter/material.dart';

class NueBox extends StatelessWidget {
  final child;
  const NueBox({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: child,
      decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade500,
                blurRadius: 15,
                offset: const Offset(5,5)
            ),
            const BoxShadow(
                color: Colors.white,
                blurRadius: 15,
                offset: Offset(-5,-5)
            )
          ]
      ),
    );
  }
}
