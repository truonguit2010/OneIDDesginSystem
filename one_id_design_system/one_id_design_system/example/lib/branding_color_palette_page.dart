

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

    //---------------------------------------------------------------------------------------------------------------------
    // Primary
    //---------------------------------------------------------------------------------------------------------------------
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
              color: Color.alphaBlend(BrandingColorPalette.primarya400, BrandingColorPalette.alphaBlendBackground),
              colorName: 'primarya400',
              colorValue: BrandingColorPalette.primarya400.hexValue
          ),
          ColorItemData(
              color: Color.alphaBlend(BrandingColorPalette.primarya300, BrandingColorPalette.alphaBlendBackground),
              colorName: 'primarya300',
              colorValue: BrandingColorPalette.primarya300.hexValue
          ),
          ColorItemData(
              color: Color.alphaBlend(BrandingColorPalette.primarya200, BrandingColorPalette.alphaBlendBackground),
              colorName: 'primarya200',
              colorValue: BrandingColorPalette.primarya200.hexValue
          ),
          ColorItemData(
              color: Color.alphaBlend(BrandingColorPalette.primarya100, BrandingColorPalette.alphaBlendBackground),
              colorName: 'primarya100',
              colorValue: BrandingColorPalette.primarya100.hexValue
          ),
        ]
    ),

    //---------------------------------------------------------------------------------------------------------------------
    // Base Color Palette
    //---------------------------------------------------------------------------------------------------------------------
    SectorData(
        sectorName: 'Base Color Palette - Ink',
        sectorDescription: 'This palette is fixed and neutral, used largely in the product interface. \n Main text color, can be used in other elements such as border, disabled item, scrim, etc',
        colors: [
          ColorItemData(
              color: BrandingColorPalette.ink500,
              colorName: 'ink500',
              colorValue: BrandingColorPalette.ink500.hexValue
          ),

          ColorItemData(
              color: Color.alphaBlend(BrandingColorPalette.ink400, BrandingColorPalette.alphaBlendBackground),
              colorName: 'ink400',
              colorValue: BrandingColorPalette.ink400.hexValue
          ),
          ColorItemData(
              color: Color.alphaBlend(BrandingColorPalette.ink300, BrandingColorPalette.alphaBlendBackground),
              colorName: 'ink300',
              colorValue: BrandingColorPalette.ink300.hexValue
          ),
          ColorItemData(
              color: Color.alphaBlend(BrandingColorPalette.ink200, BrandingColorPalette.alphaBlendBackground),
              colorName: 'ink200',
              colorValue: BrandingColorPalette.ink200.hexValue
          ),
          ColorItemData(
              color: Color.alphaBlend(BrandingColorPalette.ink100, BrandingColorPalette.alphaBlendBackground),
              colorName: 'ink100',
              colorValue: BrandingColorPalette.ink100.hexValue
          ),
        ]
    ),

    SectorData(
        sectorName: 'Black',
        sectorDescription: 'This palette is fixed and neutral, used largely in the product interface.',
        colors: [
          ColorItemData(
              color: BrandingColorPalette.black500,
              colorName: 'black500',
              colorValue: BrandingColorPalette.black500.hexValue
          ),

          ColorItemData(
              color: Color.alphaBlend(BrandingColorPalette.black400, BrandingColorPalette.alphaBlendBackground),
              colorName: 'black400',
              colorValue: BrandingColorPalette.black400.hexValue
          ),
          ColorItemData(
              color: Color.alphaBlend(BrandingColorPalette.black300, BrandingColorPalette.alphaBlendBackground),
              colorName: 'black300',
              colorValue: BrandingColorPalette.black300.hexValue
          ),
          ColorItemData(
              color: Color.alphaBlend(BrandingColorPalette.black200, BrandingColorPalette.alphaBlendBackground),
              colorName: 'black200',
              colorValue: BrandingColorPalette.black200.hexValue
          ),
          ColorItemData(
              color: Color.alphaBlend(BrandingColorPalette.black100, BrandingColorPalette.alphaBlendBackground),
              colorName: 'black100',
              colorValue: BrandingColorPalette.black100.hexValue
          ),
        ]
    ),

    SectorData(
        sectorName: 'White',
        sectorDescription: 'This palette is fixed and neutral, used largely in the product interface.',
        colors: [
          ColorItemData(
              color: BrandingColorPalette.white500,
              colorName: 'white500',
              colorValue: BrandingColorPalette.white500.hexValue
          ),

          ColorItemData(
              color: Color.alphaBlend(BrandingColorPalette.white400, BrandingColorPalette.alphaBlendBackground),
              colorName: 'white400',
              colorValue: BrandingColorPalette.white400.hexValue
          ),
          ColorItemData(
              color: Color.alphaBlend(BrandingColorPalette.white300, BrandingColorPalette.alphaBlendBackground),
              colorName: 'white300',
              colorValue: BrandingColorPalette.white300.hexValue
          ),
          ColorItemData(
              color: Color.alphaBlend(BrandingColorPalette.white200, BrandingColorPalette.alphaBlendBackground),
              colorName: 'white200',
              colorValue: BrandingColorPalette.white200.hexValue
          ),
          ColorItemData(
              color: Color.alphaBlend(BrandingColorPalette.white100, BrandingColorPalette.alphaBlendBackground),
              colorName: 'white100',
              colorValue: BrandingColorPalette.white100.hexValue
          ),
        ]
    ),

    //---------------------------------------------------------------------------------------------------------------------
    // Base Color Palette
    //---------------------------------------------------------------------------------------------------------------------
    SectorData(
        sectorName: 'Functional Color Palette - Blue',
        sectorDescription: 'Emotions [Useful]: display information content.',
        colors: [
          ColorItemData(
              color: BrandingColorPalette.blue500,
              colorName: 'blue500',
              colorValue: BrandingColorPalette.blue500.hexValue
          ),

          ColorItemData(
              color: Color.alphaBlend(BrandingColorPalette.blue400, BrandingColorPalette.alphaBlendBackground),
              colorName: 'blue400',
              colorValue: BrandingColorPalette.blue400.hexValue
          ),
          ColorItemData(
              color: Color.alphaBlend(BrandingColorPalette.blue300, BrandingColorPalette.alphaBlendBackground),
              colorName: 'blue300',
              colorValue: BrandingColorPalette.blue300.hexValue
          ),
          ColorItemData(
              color: Color.alphaBlend(BrandingColorPalette.blue200, BrandingColorPalette.alphaBlendBackground),
              colorName: 'blue200',
              colorValue: BrandingColorPalette.blue200.hexValue
          ),
          ColorItemData(
              color: Color.alphaBlend(BrandingColorPalette.blue100, BrandingColorPalette.alphaBlendBackground),
              colorName: 'blue100',
              colorValue: BrandingColorPalette.blue100.hexValue
          ),
        ]
    ),

    SectorData(
        sectorName: 'Functional Color Palette - Green',
        sectorDescription: 'Emotion [Positive]: display successful content.',
        colors: [
          ColorItemData(
              color: BrandingColorPalette.green500,
              colorName: 'green500',
              colorValue: BrandingColorPalette.green500.hexValue
          ),

          ColorItemData(
              color: Color.alphaBlend(BrandingColorPalette.green400, BrandingColorPalette.alphaBlendBackground),
              colorName: 'green400',
              colorValue: BrandingColorPalette.green400.hexValue
          ),
          ColorItemData(
              color: Color.alphaBlend(BrandingColorPalette.green300, BrandingColorPalette.alphaBlendBackground),
              colorName: 'green300',
              colorValue: BrandingColorPalette.green300.hexValue
          ),
          ColorItemData(
              color: Color.alphaBlend(BrandingColorPalette.green200, BrandingColorPalette.alphaBlendBackground),
              colorName: 'green200',
              colorValue: BrandingColorPalette.green200.hexValue
          ),
          ColorItemData(
              color: Color.alphaBlend(BrandingColorPalette.green100, BrandingColorPalette.alphaBlendBackground),
              colorName: 'green100',
              colorValue: BrandingColorPalette.green100.hexValue
          ),
        ]
    ),

    SectorData(
        sectorName: 'Functional Color Palette - Orange',
        sectorDescription: 'Emotion [Careful]: display warning content.',
        colors: [
          ColorItemData(
              color: BrandingColorPalette.orange500,
              colorName: 'orange500',
              colorValue: BrandingColorPalette.orange500.hexValue
          ),

          ColorItemData(
              color: Color.alphaBlend(BrandingColorPalette.orange400, BrandingColorPalette.alphaBlendBackground),
              colorName: 'orange400',
              colorValue: BrandingColorPalette.orange400.hexValue
          ),
          ColorItemData(
              color: Color.alphaBlend(BrandingColorPalette.orange300, BrandingColorPalette.alphaBlendBackground),
              colorName: 'orange300',
              colorValue: BrandingColorPalette.orange300.hexValue
          ),
          ColorItemData(
              color: Color.alphaBlend(BrandingColorPalette.orange200, BrandingColorPalette.alphaBlendBackground),
              colorName: 'orange200',
              colorValue: BrandingColorPalette.orange200.hexValue
          ),
          ColorItemData(
              color: Color.alphaBlend(BrandingColorPalette.orange100, BrandingColorPalette.alphaBlendBackground),
              colorName: 'orange100',
              colorValue: BrandingColorPalette.orange100.hexValue
          ),
        ]
    ),

    SectorData(
        sectorName: 'Functional Color Palette - Red',
        sectorDescription: 'Emotion [Stressful]: display dangerous content.',
        colors: [
          ColorItemData(
              color: BrandingColorPalette.red500,
              colorName: 'red500',
              colorValue: BrandingColorPalette.red500.hexValue
          ),

          ColorItemData(
              color: Color.alphaBlend(BrandingColorPalette.red400, BrandingColorPalette.alphaBlendBackground),
              colorName: 'red400',
              colorValue: BrandingColorPalette.red400.hexValue
          ),
          ColorItemData(
              color: Color.alphaBlend(BrandingColorPalette.red300, BrandingColorPalette.alphaBlendBackground),
              colorName: 'red300',
              colorValue: BrandingColorPalette.red300.hexValue
          ),
          ColorItemData(
              color: Color.alphaBlend(BrandingColorPalette.red200, BrandingColorPalette.alphaBlendBackground),
              colorName: 'red200',
              colorValue: BrandingColorPalette.red200.hexValue
          ),
          ColorItemData(
              color: Color.alphaBlend(BrandingColorPalette.red100, BrandingColorPalette.alphaBlendBackground),
              colorName: 'red100',
              colorValue: BrandingColorPalette.red100.hexValue
          ),
        ]
    ),

    //---------------------------------------------------------------------------------------------------------------------
    // Support Color
    //---------------------------------------------------------------------------------------------------------------------
    SectorData(
        sectorName: 'Support Color',
        sectorDescription: 'Including other colors for specific functions.',
        colors: [
          ColorItemData(
              color: BrandingColorPalette.background_light,
              colorName: 'background_light',
              colorValue: BrandingColorPalette.background_light.hexValue
          ),

          ColorItemData(
              color: Color.alphaBlend(BrandingColorPalette.background_dark, BrandingColorPalette.alphaBlendBackground),
              colorName: 'background_dark',
              colorValue: BrandingColorPalette.background_dark.hexValue
          ),
          ColorItemData(
              color: Color.alphaBlend(BrandingColorPalette.placeholder, BrandingColorPalette.alphaBlendBackground),
              colorName: 'placeholder',
              colorValue: BrandingColorPalette.placeholder.hexValue
          ),
          ColorItemData(
              gradient: BrandingColorPalette.Skeleton,
              colorName: 'Skeleton',
              colorValue: 'Skeleton',
          ),
          ColorItemData(
            gradient: BrandingColorPalette.gradient50top,
            colorName: 'gradient50top',
            colorValue: 'gradient50top',
          ),
          ColorItemData(
            gradient: BrandingColorPalette.gradient50bot,
            colorName: 'gradient50bot',
            colorValue: 'gradient50bot',
          ),
        ]
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Branding Color Palatte'),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: datas.map((e) { return ColorSector(sectorData: e,); }).toList(),
            ),
            Container(height: 40,)
          ],
        ),
      ),
    );
  }

}

class ColorItemData {
  final Color color;
  final Gradient gradient;
  final String colorName;
  final String colorValue;

  ColorItemData({this.color, this.gradient, this.colorName, this.colorValue});
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
    Container colorContainer = null;

    if (colorItemData.color != null) {
      colorContainer = Container(
          height: 100,
          width: 100,
          color: colorItemData.color,
      );
    } else {
      colorContainer = Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          gradient: colorItemData.gradient
        ),
      );
    }

    return Container(
      width: 150,
      height: 151,
      child: Column(
        children: [
          colorContainer,
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