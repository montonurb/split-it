import 'package:flutter/material.dart';

import 'package:split_it/theme/app_theme.dart';

class Persontile extends StatelessWidget {
  final String name;
  final bool isRemoved;
  const Persontile({
    Key? key,
    required this.name,
    this.isRemoved = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 40,
        width: 40,
        color: Colors.grey.shade200,
      ),
      title: Text(
        name,
        style: AppTheme.textStyles.friendsName,
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: isRemoved
            ? Icon(Icons.remove, color: AppTheme.colors.friendListRemove)
            : Icon(Icons.add, color: AppTheme.colors.friendsIconAdd),
      ),
    );
  }
}
