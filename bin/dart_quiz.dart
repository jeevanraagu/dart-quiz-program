import 'dart:io';

void main() {
  List<Map<String, dynamic>> questions = [
    {
      'question': 'Which language is used for Flutter?',
      'options': ['Java', 'Dart', 'Python', 'C++'],
      'answer': 'B'
    },
    {
      'question': 'Which company developed Flutter?',
      'options': ['Google', 'Microsoft', 'Apple', 'Amazon'],
      'answer': 'A'
    },
    {
      'question': 'Which keyword declares a variable in Dart?',
      'options': ['int', 'var', 'void', 'class'],
      'answer': 'B'
    },
    {
      'question': 'Which symbol ends a statement in Dart?',
      'options': [':', '.', ';', ','],
      'answer': 'C'
    },
    {
      'question': 'What is the starting function of Dart?',
      'options': ['start()', 'run()', 'main()', 'begin()'],
      'answer': 'C'
    }
  ];

  int score = 0;

  print('================================');
  print('       DART QUIZ PROGRAM');
  print('================================');

  for (int i = 0; i < questions.length; i++) {
    print('\nQuestion ${i + 1}: ${questions[i]['question']}');

    List<String> options = questions[i]['options'];

    for (int j = 0; j < options.length; j++) {
      print('${String.fromCharCode(65 + j)}. ${options[j]}');
    }

    stdout.write('Enter your answer (A/B/C/D): ');

    String answer = stdin.readLineSync()?.trim().toUpperCase() ?? '';

    if (answer == questions[i]['answer']) {
      print('Correct Answer!');
      score++;
    } else {
      print('Wrong Answer!');
      print('Correct answer: ${questions[i]['answer']}');
    }
  }

  print('\n================================');
  print('           QUIZ RESULT');
  print('================================');

  print('Total Questions: ${questions.length}');
  print('Correct Answers: $score');
  print('Wrong Answers: ${questions.length - score}');

  double percentage = (score / questions.length) * 100;

  print('Percentage: ${percentage.toStringAsFixed(2)}%');

  String grade;

  if (percentage >= 80) {
    grade = 'A Grade';
  } else if (percentage >= 60) {
    grade = 'B Grade';
  } else if (percentage >= 40) {
    grade = 'C Grade';
  } else {
    grade = 'Fail';
  }

  print('Grade: $grade');

  print('================================');
}