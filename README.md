# DART CONSOLE QUIZ PROGRAM

## 1. Student Details

**Student Name:** Jeevan Surya Kumar Raagu  
**College Name:** VIT Bhimavaram  
**Course:** B.Tech – 3rd Year CSE D 
**Project Title:** Dart Console Quiz Program

## 2. Project Title

**Dart Console Quiz Program Using Lists, Maps and Loops**

## 3. Project Description

The Dart Console Quiz Program is a simple quiz application developed using the Dart programming language.

It contains multiple-choice questions with four options. The user selects an answer for each question. The program checks the answers and calculates the total score, percentage and final grade.

This project demonstrates the use of Lists, Maps, Loops, Conditional Statements and User Input in Dart.

## 4. Architecture

The program follows these steps:

1. Start the program.
2. Display the quiz title.
3. Store questions and answers using Lists and Maps.
4. Display questions and options using loops.
5. Accept answers from the user.
6. Check whether the answers are correct.
7. Calculate the score and percentage.
8. Display the final grade.
9. End the program.

**Architecture Flow:**

Start → Display Questions → Accept Answers → Check Answers → Calculate Score → Calculate Percentage → Display Grade → End

## 5. Project Structure

```text
dart_quiz/
│
├── bin/
│   └── dart_quiz.dart
│
├── screenshots/
│   ├── 01_quiz_start.png
│   ├── 02_answer_validation.png
│   ├── 03_quiz_result.png
│   └── 04_final_grade.png
│
├── test/
├── pubspec.yaml
├── analysis_options.yaml
└── README.md
```

## 6. Code Snippets

### A. Using Lists and Maps

Questions, options and correct answers are stored using Lists and Maps.

```dart
List<Map<String, dynamic>> questions = [
  {
    'question': 'Which language is used for Flutter?',
    'options': ['Java', 'Dart', 'Python', 'C++'],
    'answer': 'B'
  }
];
```

### B. Using Loops

A for loop displays the questions and their options.

```dart
for (int i = 0; i < questions.length; i++) {
  print('Question ${i + 1}: ${questions[i]['question']}');
}
```

### C. Checking Answers

An if-else statement checks the user's answer and updates the score.

```dart
if (answer == questions[i]['answer']) {
  print('Correct Answer!');
  score++;
} else {
  print('Wrong Answer!');
}
```

### D. Calculating Grade

The percentage is calculated and the grade is displayed using conditional statements.

```dart
double percentage = (score / questions.length) * 100;

if (percentage >= 80) {
  grade = 'A Grade';
} else if (percentage >= 60) {
  grade = 'B Grade';
} else if (percentage >= 40) {
  grade = 'C Grade';
} else {
  grade = 'Fail';
}
```

## 7. Outputs

### Screenshot 1 – Quiz Start

![Quiz Start](screenshots/01_quiz_start.png)

### Screenshot 2 – Answer Validation

![Answer Validation](screenshots/02_answer_validation.png)

### Screenshot 3 – Quiz Result

![Quiz Result](screenshots/03_quiz_result.png)

### Screenshot 4 – Final Grade

![Final Grade](screenshots/04_final_grade.png)

## Conclusion

The Dart Console Quiz Program was successfully developed using the Dart programming language. This project helped demonstrate Lists, Maps, Loops, Conditional Statements and User Input. It also calculates the quiz score, percentage and grade automatically.