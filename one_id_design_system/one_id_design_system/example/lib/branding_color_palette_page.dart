

import 'package:flutter/material.dart';
import 'package:one_id_design_system/branding_color_palette.dart';

class BrandingColorPalettePage extends StatelessWidget {

  List<SectorData> datas = [
    SectorData(
      sectorName: 'Brand',
      sectorDescription: 'The colors that follow the brand identity.',
      colors: [
        ColorItemData(
          color: BrandingColorPalette.branda500,
          colorName: 'branda500',
          colorValue: BrandingColorPalette.branda500.hexValue
        ),

        ColorItemData(
            color: BrandingColorPalette.brandb500,
            colorName: 'brandb500',
            colorValue: BrandingColorPalette.brandb500.hexValue
        ),
      ]
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Branding Color Palatte'),),
      body: SingleChildScrollView(
        child: Column(
          children: datas.map((e) { return ColorSector(sectorData: e,); }).toList(),
        ),
      ),
    );
  }

}

class ColorItemData {
  final Color color;
  final String colorName;
  final String colorValue;

  ColorItemData({this.color, this.colorName, this.colorValue});
}

class SectorData {
  final String sectorName;
  final String sectorDescription;
  final List<ColorItemData> colors;

  SectorData({this.sectorName, this.sectorDescription, this.colors});
}



class ColorItem extends StatelessWidget {
  final ColorItemData colorItemData;

  ColorItem(this.colorItemData);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 151,
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
  final SectorData sectorData;

  ColorSector({ @required this.sectorData });

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(sectorData.sectorName),
          Text(sectorData.sectorDescription),
          HorizontalColorItemList(sectorData.colors),
        ],
      ),
    );
  }
}