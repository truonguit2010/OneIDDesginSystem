
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:one_id_design_system/one_id_font.dart';
import 'package:one_id_design_system/branding_color_palette.dart';
import 'package:one_id_design_system/one_id_layout.dart';

const String DEMO_TEXT = 'Smart assistant for Vietnamese people';

class TypographyDemoPage extends StatelessWidget {



  List<DemoFontData> demoFontDatas = [
    // -------------------------------------------------------------------------
    DemoFontData(
        textStyle: ODSTextStyle.T24M.textStyleWithColor(),
        demoText: DEMO_TEXT
    ),

    DemoFontData(
        textStyle: ODSTextStyle.T24R.textStyleWithColor(),
        demoText: DEMO_TEXT
    ),

    // -------------------------------------------------------------------------
    DemoFontData(
      textStyle: ODSTextStyle.T20M.textStyleWithColor(),
      demoText: DEMO_TEXT
    ),

    DemoFontData(
        textStyle: ODSTextStyle.T20R.textStyleWithColor(),
        demoText: DEMO_TEXT
    ),

    // -------------------------------------------------------------------------
    DemoFontData(
        textStyle: ODSTextStyle.T16M.textStyleWithColor(),
        demoText: DEMO_TEXT
    ),

    DemoFontData(
        textStyle: ODSTextStyle.T16R.textStyleWithColor(),
        demoText: DEMO_TEXT
    ),

    // -------------------------------------------------------------------------
    DemoFontData(
        textStyle: ODSTextStyle.T14M.textStyleWithColor(),
        demoText: DEMO_TEXT
    ),

    DemoFontData(
        textStyle: ODSTextStyle.T14R.textStyleWithColor(),
        demoText: DEMO_TEXT
    ),

    // -------------------------------------------------------------------------
    DemoFontData(
        textStyle: ODSTextStyle.T12M.textStyleWithColor(),
        demoText: DEMO_TEXT
    ),

    DemoFontData(
        textStyle: ODSTextStyle.T12R.textStyleWithColor(),
        demoText: DEMO_TEXT
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Typography'),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DemoFontListWidget(demoFontDatas: this.demoFontDatas,),
            Container(height: 40,)
          ],
        ),
      ),
    );
  }
}

class DemoFontData {
  final TextStyle textStyle;
  final String demoText;

  DemoFontData({this.textStyle, this.demoText});
}

class DemoFontListWidget extends StatelessWidget {
  final List<DemoFontData> demoFontDatas;


  DemoFontListWidget({@required this.demoFontDatas});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: ODSFullColumnLayout.PADDING),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: demoFontDatas.map((e) {
            return DemoFontItemWidget(demoFontData: e,);
          }).toList(),
        ),
      ),
    );
  }
}

class DemoFontItemWidget extends StatefulWidget {

  final DemoFontData demoFontData;

  DemoFontItemWidget({@required this.demoFontData});

  @override
  State<StatefulWidget> createState() {
    return DemoFontItemState(demoFontData: this.demoFontData);
  }
}

class DemoFontItemState extends State<DemoFontItemWidget> {

  final DemoFontData demoFontData;

  bool _isShowingText = true;

  DemoFontItemState({@required this.demoFontData});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _isShowingText = !_isShowingText;
        });
      },
      child: Container(
        width: double.infinity,
        height: 70,
        child: _isShowingText ? DemoFontItemTextWidget(demoFontData: demoFontData) : DemoFontItemInfoWidget(demoFontData: demoFontData,),
      ),

    );
  }
}

class DemoFontItemTextWidget extends StatelessWidget {

  final DemoFontData demoFontData;

  DemoFontItemTextWidget({this.demoFontData});

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.only(left: ODSFullColumnLayout.PADDING, right: ODSFullColumnLayout.PADDING),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Text(demoFontData.demoText, style: demoFontData.textStyle, textAlign: TextAlign.center,),
          )
        ],
      ),
    );
  }
}

class DemoFontItemInfoWidget extends StatelessWidget {

  final DemoFontData demoFontData;

  String get _fontTitle {
    String f = demoFontData.textStyle.fontFamily; 
    String combinedResult = '';
    if (f.contains('Roboto')) {
      combinedResult += 'R';
    } else if (f.contains('SF')) {
      combinedResult += 'S';
    }
    combinedResult += demoFontData.textStyle.fontSize.round().toString();
    if (f.contains('Regular')) {
      combinedResult += 'R';
    } else if (f.contains('Medium')) {
      combinedResult += 'M';
    }
//    combinedResult += demoFontData.textStyle.height.toString();
    return combinedResult;
  }

  String get _fontFamily {
    return '${demoFontData.textStyle.fontFamily}';
  }

  String get _fontSize {
    return '${demoFontData.textStyle.fontSize}';
  }

  String get _lineHeight {
    return '${demoFontData.textStyle.height}';
  }

  Color _fontTitleColor = BrandingColorPalette.ink500;
  Color _headerColor = Color.alphaBlend(BrandingColorPalette.ink300, BrandingColorPalette.alphaBlendBackground);
  Color _infoColor = Color.alphaBlend(BrandingColorPalette.ink400, BrandingColorPalette.alphaBlendBackground);

  TextStyle get _fontTitleTextStyle {
    return ODSTextStyle.T20M.textStyleWithColor(color: _fontTitleColor);
  }

  TextStyle get _headerTextStyle {
    return ODSTextStyle.T12M.textStyleWithColor(color: _headerColor);
  }

  TextStyle get _infoTextStyle {
    return ODSTextStyle.T12M.textStyleWithColor(color: _infoColor);
  }

  DemoFontItemInfoWidget({@required this.demoFontData});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: ODSFullColumnLayout.PADDING, right: ODSFullColumnLayout.PADDING),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(_fontTitle,
            style: _fontTitleTextStyle,
          ),

          Row(
            children: [

              Expanded(
                child: _buildInfoColumnWidget('Family', _fontFamily)
              ),

              _buildInfoColumnWidget('Size', _fontSize),

              _buildInfoColumnWidget('Line height', _lineHeight)
            ],
          ),

//          Text(demoFontData.demoText, style: demoFontData.textStyle,)
        ],
      ),
    );
  }

  Widget _buildInfoColumnWidget(String header, String infomation) {
    return Container(
      padding: EdgeInsets.only(left: ODSFullColumnLayout.PADDING, right: ODSFullColumnLayout.PADDING),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(header, style: _headerTextStyle,),
          Text(infomation, style: _infoTextStyle,),
        ],
      ),
    );
  }
}



