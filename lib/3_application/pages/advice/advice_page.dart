import 'package:advicer/3_application/core/services/theme_service.dart';
import 'package:advicer/3_application/pages/advice/widgets/advice_field.dart';
import 'package:advicer/3_application/pages/advice/widgets/custom_button.dart';
import 'package:advicer/3_application/pages/advice/widgets/error_message.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AdvicePage extends StatelessWidget {
  const AdvicePage({super.key});

  @override
  Widget build(BuildContext context) {

    final themeData = Theme.of(context);
    return  Scaffold(
      appBar: AppBar(
        title: Text('Advice', style: themeData.textTheme.headlineLarge),
        centerTitle: true,
        iconTheme: IconThemeData(color: themeData.colorScheme.onPrimary),
        actions: [
          Switch(value: Provider.of<ThemeService>(context).themeMode == ThemeMode.dark, onChanged: (value) {
            Provider.of<ThemeService>(context, listen: false).toggleTheme();
          }),
        ],
      ),
      body: Padding(padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: AdviceField(advice: 'Your advice is waiting for you'),
                // child: ErrorMessage(message: 'an error has ocurred'),
              ),
            ),
            SizedBox(
              height: 200,
              child: Center(child: CustomButton()),
            ),
          ],
        ),
      ),
    );
  }
}