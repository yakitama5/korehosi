import 'package:flutter/material.dart';

import 'settings_radio_list_tile.dart';

class SettingsRadioScaffold<T> extends StatelessWidget {
  const SettingsRadioScaffold({
    super.key,
    required this.title,
    required this.tiles,
  });

  final String title;
  final List<SettingsRadioListTile<T>> tiles;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        itemCount: tiles.length,
        itemBuilder: (context, index) => tiles[index],
      ),
    );
  }
}
