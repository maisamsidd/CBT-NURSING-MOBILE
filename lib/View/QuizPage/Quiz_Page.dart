import 'package:cbt_nursing_app/Model/quizModel.dart';
import 'package:cbt_nursing_app/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class QuizPage extends StatefulWidget {
  QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int currentIndex = 0;

  List<QuizModel> quizList = [
    QuizModel(
      qId: "1",
      question: "What is the capital of Pakistan?",
      option1: "Karachi",
      option2: "Islamabad",
      option3: "Hyderabad",
      option4: "Lahore",
      correctOption: "Islamabad",
    ),
    QuizModel(
      qId: "1",
      question: "What is the capital of India?",
      option1: "Delhi",
      option2: "Islamabad",
      option3: "Mumbai",
      option4: "Lahore",
      correctOption: "Islamabad",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1A56DB),
        title: const Text(
          "Nursing Quiz",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Quiz category title
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              decoration: BoxDecoration(
                color: const Color(0xFF1A56DB).withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: const [
                  Icon(Icons.medical_services, color: Color(0xFF1A56DB)),
                  SizedBox(width: 10),
                  Text(
                    "Anatomy",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1A56DB),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // Question Card
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Question 1 of 10",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    quizList[currentIndex].question.toString(),
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      height: 1.4,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // Options
            _buildOption(
              context,
              "A",
              quizList[currentIndex].option1.toString(),
            ),
            const SizedBox(height: 15),
            _buildOption(
              context,
              "B",
              quizList[currentIndex].option2.toString(),
            ),
            const SizedBox(height: 15),
            _buildOption(
              context,
              "C",
              quizList[currentIndex].option3.toString(),
            ),
            const SizedBox(height: 15),
            _buildOption(
              context,
              "D",
              quizList[currentIndex].option4.toString(),
            ),

            const SizedBox(height: 40),

            // Next Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (currentIndex < quizList.length - 1) {
                    setState(() {
                      currentIndex++;
                    });
                  } else {
                    Get.snackbar("Good", "Quiz Completed");
                  }
                },

                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1A56DB),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 0,
                ),
                child: const Text(
                  "Next Question",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOption(
    BuildContext context,
    String optionLetter,
    String optionText,
  ) {
    return InkWell(
      onTap: () {
        if (optionText == quizList[0].correctOption) {
          Get.snackbar(
            "Correct Answer",
            "You have selected the correct answer",
          );
        } else {
          Get.snackbar("Wrong Answer", "You have selected the wrong answer");
        }
      },
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey.withOpacity(0.3)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 6,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: const Color(0xFF1A56DB).withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  optionLetter,
                  style: const TextStyle(
                    color: Color(0xFF1A56DB),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Text(optionText, style: const TextStyle(fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}
