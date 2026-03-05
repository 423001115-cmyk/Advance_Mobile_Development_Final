import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/settings_provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: Consumer<SettingsProvider>(
        builder: (context, settings, child) {
          return ListView(
            children: [
              SwitchListTile(
                title: const Text('Dark Theme'),
                value: settings.isDarkMode,
                secondary: const Icon(CupertinoIcons.moon),
                onChanged: (value) {
                  settings.setDarkMode(value);
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
