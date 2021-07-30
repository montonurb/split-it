import 'package:flutter/material.dart';
import 'package:split_it/modules/show_split/list_items_split.dart';
import 'package:split_it/modules/show_split/list_user_split.dart';
import 'package:split_it/theme/app_theme.dart';

class ShowSplitPage extends StatefulWidget {
  const ShowSplitPage({Key? key}) : super(key: key);

  @override
  _ShowSplitPageState createState() => _ShowSplitPageState();
}

class _ShowSplitPageState extends State<ShowSplitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.backgroundPrimary,
      appBar: AppBar(
          backgroundColor: AppTheme.colors.backgroundSecondary,
          title: Text(
            "Churrasco",
            style: AppTheme.textStyles.appBar,
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 16),
              child: Icon(Icons.delete),
            ),
          ]),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 24),
            child: Text(
              "Integrantes".toUpperCase(),
              style: AppTheme.textStyles.pagesShowSplit1,
            ),
          ),
          Column(
            children: [
              ListUserSplit(nameUser: "Você", valueSplit: 55.80, userPay: true),
              ListUserSplit(
                  nameUser: "Valéria", valueSplit: 58.00, userPay: false),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 32, left: 24, right: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Ítens".toUpperCase(),
                      style: AppTheme.textStyles.pagesShowSplit1,
                    ),
                    Text(
                      "6 itens",
                      style: AppTheme.textStyles.amountItemsShowSplit,
                    ),
                  ],
                ),
              ),
              Divider(color: AppTheme.colors.dividerList),
              SizedBox(height: 12),
              Column(
                children: [
                  ListItemsSplit(nameItem: "Picanha", valueItem: 55.80),
                  ListItemsSplit(nameItem: "Linguiça", valueItem: 25.00),
                  ListItemsSplit(nameItem: "Lombo", valueItem: 33.00),
                ],
              ),
            ],
          ),
          Container(
            height: 56,
            color: AppTheme.colors.button,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total".toUpperCase(),
                          style:
                              AppTheme.textStyles.totalValueItemsShowSplitBold,
                        ),
                        Text.rich(
                          TextSpan(
                              text: "R\$ ",
                              style:
                                  AppTheme.textStyles.totalValueItemsShowSplit,
                              children: [
                                TextSpan(
                                    text: "113.80",
                                    style: AppTheme.textStyles
                                        .totalValueItemsShowSplitBold)
                              ]),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text.rich(
                  TextSpan(
                    text: "Faltam R\$ ",
                    style: AppTheme.textStyles.remainderPay,
                    children: [
                      TextSpan(
                          text: "1.10",
                          style: AppTheme.textStyles.remainderPayBold)
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
