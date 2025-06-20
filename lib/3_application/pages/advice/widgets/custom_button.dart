import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return InkResponse(
      onTap: () {
        print('buttom pressed');
      },
      child: Material(
        elevation: 20,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          decoration: BoxDecoration(
            color: themeData.colorScheme.secondary,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
          child: Text('Get Advice', style: themeData.textTheme.bodyLarge),
          ),
        ),
      )
    );
  }
}