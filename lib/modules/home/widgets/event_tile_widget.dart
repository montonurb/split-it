import 'package:flutter/material.dart';
import 'package:split_it/modules/home/widgets/icon_dollar_widget.dart';
import 'package:split_it/modules/home/widgets/loading_widget.dart';
import 'package:split_it/shared/models/event_model.dart';
import 'package:split_it/theme/app_theme.dart';

class EventTileWidget extends StatelessWidget {
  final EventModel model;
  final bool isLoading;

  EventTileWidget({
    Key? key,
    required this.model,
    this.isLoading = false,
  }) : super(key: key);

  IconDollarType get iconDollarType =>
      model.value! >= 0 ? IconDollarType.receive : IconDollarType.send;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (isLoading) ...[
          LoadingWidget(size: Size(48, 48)),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: LoadingWidget(size: Size(81, 19)),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        LoadingWidget(size: Size(61, 17)),
                        SizedBox(height: 5),
                        LoadingWidget(size: Size(48, 18)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ] else ...[
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
                    subtitle: Text("${model.created!.toIso8601String()}",
                        style: AppTheme.textStyles.dateList),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("R\$ ${model.value}",
                            style: AppTheme.textStyles.valueList),
                        SizedBox(height: 5),
                        Text(
                            "${model.people} amigo${model.people! > 1 ? 's' : ''}",
                            style: AppTheme.textStyles.friendList),
                      ],
                    ),
                  ),
                  Divider(color: AppTheme.colors.dividerList),
                ],
              ),
            ),
          ),
        ]
      ],
    );
  }
}
