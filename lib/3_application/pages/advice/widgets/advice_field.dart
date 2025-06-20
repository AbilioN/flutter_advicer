import 'package:flutter/material.dart';

class AdviceField extends StatelessWidget {

  final String advice;
  const AdviceField({super.key, required this.advice});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Material(
      elevation: 20,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        decoration: BoxDecoration(
          color: themeData.colorScheme.onPrimary,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
          child: Text(
            '''"$advice"''', 
            style: themeData.textTheme.bodyLarge?.copyWith(
              color: themeData.colorScheme.onSecondary,
            ), 
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}