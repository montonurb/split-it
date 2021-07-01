import 'package:flutter/material.dart';
import 'package:split_it/modules/create_split/widgets/step_input_text.dart';
import 'package:split_it/modules/create_split/widgets/step_title.dart';

class StepThreePage extends StatefulWidget {
  const StepThreePage({Key? key}) : super(key: key);

  @override
  _StepThreePageState createState() => _StepThreePageState();
}

class _StepThreePageState extends State<StepThreePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StepTitleWidget(
          title: "Quai ou quais",
          subtitle: "itens você quer dividir?",
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Text("1"),
              ),
              Expanded(
                flex: 3,
                child: StepInputTextWidget(
                  padding: EdgeInsets.zero,
                  hintText: "Ex: Picanha",
                  onChange: (value) {},
                  align: TextAlign.start,
                ),
              ),
              Expanded(
                child: StepInputTextWidget(
                  padding: EdgeInsets.zero,
                  hintText: "R\$ 0,00",
                  onChange: (value) {},
                  align: TextAlign.start,
                ),
              ),
              IconButton(icon: Icon(Icons.delete), onPressed: () {})
            ],
          ),
        ),
      ],
    );
  }
}
