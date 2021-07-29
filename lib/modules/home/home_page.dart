import 'package:flutter/material.dart';
import 'package:split_it/modules/home/home_controller.dart';
import 'package:split_it/modules/home/home_state.dart';
//import 'package:split_it/modules/home/widgets/app_bar/app_bar_widget.dart';
import 'package:split_it/modules/home/widgets/app_bar/bottom_app_bar/bottom_app_bar_widget.dart';
import 'package:split_it/modules/home/widgets/event_tile_widget.dart';
import 'package:split_it/modules/login/widgets/models/user_model.dart';
import 'package:split_it/shared/models/event_model.dart';
import 'package:split_it/theme/app_theme.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();
  final VoidCallback? onTapAddButton;

  _HomePageState({this.onTapAddButton});

  @override
  void initState() {
    controller.getEvents();
    controller.listen((state) {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final UserModel user =
        ModalRoute.of(context)!.settings.arguments as UserModel;
    return Scaffold(
      /* appBar: AppBarWidget(
          user: user,
          onTapAddButton: () {
            Navigator.pushNamed(context, "/create_split");
          }), */
      body: CustomScrollView(slivers: [
        SliverAppBar(
            expandedHeight: 150,
            backgroundColor: AppTheme.colors.backgroundSecondary,
            pinned: true,
            leading: Padding(
              padding: const EdgeInsets.only(top: 4, left: 16, bottom: 4),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  user.photoUrl!,
                  width: 67,
                  height: 62,
                ),
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 16),
              child: Text(user.name!),
            ),
            centerTitle: true,
            actions: [
              Padding(
                padding: const EdgeInsets.only(top: 4, right: 16, bottom: 4),
                child: Container(
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.fromBorderSide(BorderSide(
                        color: AppTheme.colors.border2.withOpacity(0.25),
                      ))),
                  child: Center(
                    child: IconButton(icon: Icon(Icons.add), onPressed: () {}),
                  ),
                ),
              ),
            ]),
        SliverToBoxAdapter(child: BottomAppBarWidget()),
        SliverList(
          delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  if (controller.state is HomeStateLoading) ...[
                    ...List.generate(
                        10,
                        (index) => EventTileWidget(
                            isLoading: true, model: EventModel()))
                  ] else if (controller.state is HomeStateSuccess) ...[
                    ...(controller.state as HomeStateSuccess)
                        .events
                        .map(
                          (e) => EventTileWidget(model: e),
                        )
                        .toList()
                  ] else if (controller.state is HomeStateFailure) ...[
                    Text((controller.state as HomeStateFailure).message),
                  ] else ...[
                    Container(),
                  ]
                ],
              ),
            );
          }),
        )
      ]),
    );
  }
}
