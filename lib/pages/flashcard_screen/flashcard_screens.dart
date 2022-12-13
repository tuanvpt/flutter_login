import 'package:demo/data/vocabulary_json.dart';
import 'package:demo/widgets/cards_stack_widget.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class FlashCardScreen extends StatefulWidget {
  const FlashCardScreen({super.key});

  @override
  State<FlashCardScreen> createState() => _FlashCardScreenState();
}

class _FlashCardScreenState extends State<FlashCardScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Leaning"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              BackgoundWidget(),
              CardsStackWidget(),
            ],
          ),
        ));
  }
}

Widget BackgoundWidget() {
  return Container(
    width: double.infinity,
    height: 150,
    decoration: const ShapeDecoration(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(64),
          bottomRight: Radius.circular(64),
        ),
      ),
      gradient: LinearGradient(
        colors: <Color>[
          Color(0xFF8F94FB),
          Color(0xFF4950E5),
        ],
      ),
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: StepProgressIndicator(
        totalSteps: draggableItems.length,
        currentStep: 0,
        size: 36,
        selectedColor: Colors.black,
        unselectedColor: Colors.grey,
        padding: 0.8,
        customStep: (index, color, _) => color == Colors.black
            ? Container(
                color: color,
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                ),
              )
            : Container(
                color: color,
                child: Icon(
                  Icons.remove,
                ),
              ),
      ),
    ),
  );
}
