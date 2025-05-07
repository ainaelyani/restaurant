import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ChooseCategory extends HookWidget {
  const ChooseCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Choose Category'),
      ),
    );
  }
}
