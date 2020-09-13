import 'package:flutter/material.dart';
import 'package:portfolio_web/utils/colors.dart';

class CrossPattern extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.0,
      height: 250.0,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: _buildChildren(),
      ),
    );
  }

  List<Widget> _buildChildren() {
    List<Widget> rows = [];
    for(int i=0;i<6;i++)
      rows.add(_buildRow());
    return rows;
  }

  Widget _buildRow(){
    List<Widget> cross=[];
    for(int i=0;i<6;i++)
      cross.add(Icon(Icons.clear,color: kColorPrimary,));
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: cross
    );
  }
}
