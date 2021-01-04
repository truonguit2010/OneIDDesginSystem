

import 'package:flutter/material.dart';
import 'package:one_id_design_system/branding_color_palette.dart';

class BrandingColorPalettePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Branding Color Palatte'),),
      body: SingleChildScrollView(
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }

}

class ColorItemData {
  Color color;
  String colorName;
  String colorValue;
}

class ColorItem extends StatelessWidget {
  final ColorItemData colorItemData;

  ColorItem(this.colorItemData);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 130,
      child: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            color: colorItemData.color,
          ),
          Text(colorItemData.colorName),
          Text(colorItemData.colorValue),
        ],
      ),
    );
  }
}

class HorizontalColorItemList extends StatelessWidget {
  final List<ColorItemData> colors;

  HorizontalColorItemList(this.colors);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Row(
          children: this.colors.map((e) { return ColorItem(e); }).toList(),
        ),
      ),
    );
  }
}

class ColorSector extends StatelessWidget {
  final String sectorName;
  final String sectorDescription;
  final List<ColorItemData> colors;

  ColorSector({this.sectorName, this.sectorDescription, this.colors});

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        children: [
          Text(sectorName),
          Text(sectorDescription),
          HorizontalColorItemList(colors),
        ],
      ),
    );
  }
}