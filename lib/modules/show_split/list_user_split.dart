import 'package:flutter/material.dart';
import 'package:split_it/modules/home/widgets/icon_dollar_widget.dart';
import 'package:split_it/theme/app_theme.dart';

//ignore: must_be_immutable
class ListUserSplit extends StatefulWidget {
  final String nameUser;
  final double valueSplit;
  bool userPay;

  ListUserSplit({
    Key? key,
    required this.nameUser,
    required this.valueSplit,
    required this.userPay,
  }) : super(key: key);

  @override
  _ListUserSplitState createState() => _ListUserSplitState();
}

class _ListUserSplitState extends State<ListUserSplit> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Container(
        color: AppTheme.colors.button,
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconDollarWidget(type: IconDollarType.receive),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      title: Text(
                        widget.nameUser,
                        style: AppTheme.textStyles.textShowSplit,
                      ),
                      subtitle: Text(
                        (widget.valueSplit.toStringAsFixed(2)).toString(),
                        style: AppTheme.textStyles.valueShowSplit,
                      ),
                      trailing: Checkbox(
                          value: widget.userPay,
                          activeColor: AppTheme.colors.valueShowSplit,
                          onChanged: (onChanged) {
                            widget.userPay = !widget.userPay;
                            setState(() {});
                          }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
