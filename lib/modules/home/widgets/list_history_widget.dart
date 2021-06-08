import 'package:flutter/material.dart';
import 'package:split_it/modules/home/widgets/icon_dollar_widget.dart';
import 'package:split_it/theme/app_theme.dart';

class ListHistoryWidget extends StatelessWidget {
  final double value;
  ListHistoryWidget({Key? key, required this.value}) : super(key: key);

  IconDollarType get iconDollarType =>
      value >= 0 ? IconDollarType.receive : IconDollarType.send;

  final DateTime date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    double valueNew;
    value < 0 ? valueNew = value * -1 : valueNew = value * 1;
    print(value);
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(right: 24, left: 24),
          child: ListTile(
            leading: IconDollarWidget(type: iconDollarType),
            title:
                Text("Churrasco", style: AppTheme.textStyles.descriptionList),
            subtitle: Text("$date", style: AppTheme.textStyles.dateList),
            trailing:
                Text("R\$ $valueNew", style: AppTheme.textStyles.valueList),
          ),
        ),
      ],
    );
  }
}
