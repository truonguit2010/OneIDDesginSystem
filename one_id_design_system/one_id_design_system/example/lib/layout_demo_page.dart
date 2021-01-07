

import 'package:flutter/material.dart';
import 'package:one_id_design_system/one_id_font.dart';
import 'package:one_id_design_system/branding_color_palette.dart';
import 'package:one_id_design_system/one_id_layout.dart';

class LayoutDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Column Layout'),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ColumnLayoutDemoWidget(),
            Container(height: 40,)
          ],
        ),
      ),
    );
  }
}

class ItemDemoData {
  final Color itemColor;
  final double itemHeight;

  ItemDemoData({this.itemColor, this.itemHeight});
}

class ColumnLayoutDemoSector {
  final List<ItemDemoData> itemDemoDatas;

  ColumnLayoutDemoSector({this.itemDemoDatas});
}

const double kDemoItemHeight = 160;
Color _firstItemColor = BrandingColorPalette.blue300;
Color _secondItemColor = BrandingColorPalette.green300;
Color _thirdItemColor = BrandingColorPalette.orange300;
Color _fourthItemColor = BrandingColorPalette.red300;

class ColumnLayoutDemoWidget extends StatelessWidget {

  List<ColumnLayoutDemoSector> sectors = [

    // 1 item in row
    ColumnLayoutDemoSector(
      itemDemoDatas: [
        ItemDemoData(
          itemColor: _firstItemColor,
          itemHeight: kDemoItemHeight
        )
      ]
    ),

    // 2 item in row
    ColumnLayoutDemoSector(
        itemDemoDatas: [
          ItemDemoData(
              itemColor: _firstItemColor,
              itemHeight: kDemoItemHeight
          ),
          ItemDemoData(
              itemColor: _secondItemColor,
              itemHeight: kDemoItemHeight
          )
        ]
    ),

    // 3 item in row
    ColumnLayoutDemoSector(
        itemDemoDatas: [
          ItemDemoData(
              itemColor: _firstItemColor,
              itemHeight: kDemoItemHeight
          ),
          ItemDemoData(
              itemColor: _secondItemColor,
              itemHeight: kDemoItemHeight
          ),
          ItemDemoData(
              itemColor: _thirdItemColor,
              itemHeight: kDemoItemHeight
          )
        ]
    ),

    // 4 item in row
    ColumnLayoutDemoSector(
        itemDemoDatas: [
          ItemDemoData(
              itemColor: _firstItemColor,
              itemHeight: kDemoItemHeight
          ),
          ItemDemoData(
              itemColor: _secondItemColor,
              itemHeight: kDemoItemHeight
          ),
          ItemDemoData(
              itemColor: _thirdItemColor,
              itemHeight: kDemoItemHeight
          ),
          ItemDemoData(
              itemColor: _fourthItemColor,
              itemHeight: kDemoItemHeight
          )
        ]
    ),
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> rowList = List<Widget>();

    for (int i = 0; i < sectors.length; i++) {
      rowList.add(RowItemWidget(itemDemoDatas: sectors[i].itemDemoDatas));
      rowList.add(Container(height: ODSSpacing.M, width: double.infinity,));
    }

    rowList.add(LayoutDemoInformationWidget());

    return Container(
      padding: EdgeInsets.only(left: ODSFullColumnLayout.PADDING, right: ODSFullColumnLayout.PADDING, top: ODSFullColumnLayout.PADDING),
      child: Column(
        children: rowList,
      ),
    );
  }
}

class RowItemWidget extends StatelessWidget {
  final List<ItemDemoData> itemDemoDatas;

  RowItemWidget({this.itemDemoDatas});

  @override
  Widget build(BuildContext context) {
    List<Widget> ws = List<Widget>();

    for (int i = 0; i < itemDemoDatas.length; i++) {
      ws.add(ItemInRowWidget(itemDemoData: itemDemoDatas[i]));
      if (i < itemDemoDatas.length - 1) {
        ws.add(
          SizedBox(
            width: ODSFullColumnLayout.SPACING,
            height: kDemoItemHeight,
            child: Container(width: double.infinity, height: double.infinity),
          )
        );
//        ws.add(Container(width: ODSFullColumnLayout.SPACING, height: double.infinity));
      }
    }

    return Row(
      children: ws,
    );
  }
}

class ItemInRowWidget extends StatelessWidget {
  final ItemDemoData itemDemoData;


  ItemInRowWidget({this.itemDemoData});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        height: itemDemoData.itemHeight,
        color: itemDemoData.itemColor,
      ),
    );
  }
}

class LayoutDemoInformationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            color: BrandingColorPalette.blue400,
            width: double.infinity,
            height: kDemoItemHeight,
            padding: EdgeInsets.only(left: ODSSpacing.M),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Column padding: ${ODSFullColumnLayout.PADDING}'),
                Text('Column spacing: ${ODSFullColumnLayout.SPACING}'),
              ],
            ),
          ),
        )
      ],
    );
  }
}

