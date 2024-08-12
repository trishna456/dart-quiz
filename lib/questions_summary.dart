import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: SingleChildScrollView(
        child: Column(
            children: summaryData.map(
          (data) {
            return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                height: 20,
                width: 20,
                margin: const EdgeInsets.only(top: 5),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: (data['user_answer'] as String) ==
                          (data['correct_answer'] as String)
                      ? const Color.fromARGB(255, 18, 101, 15)
                      : const Color.fromARGB(255, 136, 36, 153),
                  shape: BoxShape.circle,
                ),
                child: Text(
                  ((data['question_index'] as int) + 1).toString(),
                  style: GoogleFonts.lato(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              //type casting
              Expanded(
                //allows its child to take the available space along the flex widget's main axis
                //flex widget = row or column widget above the expanded
                //max width of row widget is the max screen width
                //max width of column widget is the max screen height
                child: Column(
                  //column takes an infinite amount of width, even if it goes beyond the screen boundries
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data['question'] as String,
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      data['user_answer'] as String,
                      style: GoogleFonts.lato(
                        color: const Color.fromARGB(255, 185, 145, 216),
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      data['correct_answer'] as String,
                      style: GoogleFonts.lato(
                        color: const Color.fromARGB(255, 135, 143, 231),
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 5),
                  ],
                ),
              )
            ]);
          },
        ).toList()),
      ),
    );
  }
}
