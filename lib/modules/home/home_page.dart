import 'package:flutter/material.dart';
import 'package:split_it/modules/home/widgets/app_bar_widget.dart';
import 'package:split_it/modules/home/widgets/list_history_widget.dart';
import 'package:split_it/modules/login/widgets/models/user_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final UserModel user =
        ModalRoute.of(context)!.settings.arguments as UserModel;
    return Scaffold(
      appBar: AppBarWidget(
        user: user,
        onTapAddButton: () {
          print("Clicou!");
        },
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListHistoryWidget(value: -350),
              ListHistoryWidget(value: 350),
              ListHistoryWidget(value: -350),
              ListHistoryWidget(value: -350),
              ListHistoryWidget(value: -350),
              ListHistoryWidget(value: -350),
            ],
          ),
        ),
      ),
    );
  }
}
