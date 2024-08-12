import 'package:flutter/widgets.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: summaryData.map(
      (data) {
        return Row(children: [
          Text(((data['question_index'] as int) + 1).toString()),
          //type casting
          Expanded(
            //allows its child to take the available space along the flex widget's main axis
            //flex widget = row or column widget above the expanded
            //max width of row widget is the max screen width
            //max width of column widget is the max screen height
            child: Column(
              //column takes an infinite amount of width, even if it goes beyond the screen boundries
              children: [
                Text(data['question'] as String),
                const SizedBox(height: 5),
                Text(data['user_answer'] as String),
                Text(data['correct_answer'] as String)
              ],
            ),
          )
        ]);
      },
    ).toList());
  }
}
