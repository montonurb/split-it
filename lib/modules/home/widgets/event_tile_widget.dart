import 'package:flutter/material.dart';
import 'package:split_it/modules/home/widgets/icon_dollar_widget.dart';
import 'package:split_it/shared/models/event_model.dart';
import 'package:split_it/theme/app_theme.dart';

class EventTileWidget extends StatelessWidget {
  final EventModel model;

  EventTileWidget({
    Key? key,
    required this.model,
  }) : super(key: key);

  IconDollarType get iconDollarType =>
      model.value >= 0 ? IconDollarType.receive : IconDollarType.send;

  @override
  Widget build(BuildContext context) {
    print(model.value);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconDollarWidget(type: iconDollarType),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text("${model.title}",
                      style: AppTheme.textStyles.descriptionList),
                  subtitle: Text("${model.created.toIso8601String()}",
                      style: AppTheme.textStyles.dateList),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("R\$ ${model.value}",
                          style: AppTheme.textStyles.valueList),
                      SizedBox(height: 5),
                      Text(
                          "${model.people} amigo${model.people > 1 ? 's' : ''}",
                          style: AppTheme.textStyles.friendList),
                    ],
                  ),
                ),
                Divider(color: AppTheme.colors.dividerList),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
