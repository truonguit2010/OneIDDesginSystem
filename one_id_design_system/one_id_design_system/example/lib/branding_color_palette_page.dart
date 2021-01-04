

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
    ),

    SectorData(
        sectorName: 'Primary',
        sectorDescription: 'The main accent color of the product, used for interactive elements such as button, tag, tooltip, etc',
        colors: [
          ColorItemData(
              color: BrandingColorPalette.primarya500,
              colorName: 'primarya500',
              colorValue: BrandingColorPalette.primarya500.hexValue
          ),

          ColorItemData(
              color: BrandingColorPalette.primarya400,
              colorName: 'primarya400',
              colorValue: BrandingColorPalette.primarya400.hexValue
          ),
          ColorItemData(
              color: BrandingColorPalette.primarya300,
              colorName: 'primarya300',
              colorValue: BrandingColorPalette.primarya300.hexValue
          ),
          ColorItemData(
              color: BrandingColorPalette.primarya200,
              colorName: 'primarya200',
              colorValue: BrandingColorPalette.primarya200.hexValue
          ),
          ColorItemData(
              color: BrandingColorPalette.primarya100,
              colorName: 'primarya100',
              colorValue: BrandingColorPalette.primarya100.hexValue
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
        scrollDirection: Axis.horizontal,
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