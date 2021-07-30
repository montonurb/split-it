import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

class ListItemsSplit extends StatelessWidget {
  final String nameItem;
  final double valueItem;

  ListItemsSplit({
    Key? key,
    required this.nameItem,
    required this.valueItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  nameItem,
                  style: AppTheme.textStyles.nameItemShowSplit,
                ),
                Text.rich(
                  TextSpan(
                      text: "R\$ ",
                      style: AppTheme.textStyles.dinnerSymbolValueShowPage,
                      children: [
                        TextSpan(
                            text: valueItem.toStringAsFixed(2),
                            style: AppTheme.textStyles.valueShowPage)
                      ]),
                ),
              ],
            ),
            Divider(color: AppTheme.colors.dividerList),
          ],
        ),
      ),
    );
  }
}
