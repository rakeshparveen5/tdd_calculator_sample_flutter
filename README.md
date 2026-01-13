# tdd_calculator_sample_flutter
A sample Flutter project of the String Calculator demonstrating Test-Driven Development (TDD) principles. The project showcases how to design, implement, and test a simple String Calculations using clean architecture and unit tests.

## Overview
The project follows the **Test-Driven Development (TDD)** principles :-
1. Write failing tests first.
2. Implement the minimum code to make tests pass.
3. Refactor while keeping tests green.

The project manages the String calculation by the operations as :-
- Adding simple Strings
- Adding Strings including +ve & -ve numbers
- Adding Strings including numbers along with special characters & delimiters

---

## Tech Stack
- **Flutter**: A Cross-platform application development framework
- **flutter_test**: Built-in testing framework

---

## Project Structure

```
.
├── lib
│   ├── exceptions    			
│   │     ├── negative_number_exception.dart # Custom Exception class for handling negatives
│   └── utils    			
│         └── number_list.dart               # Utility class for Numbers List
│
├── main.dart	                             # Flutter App entry point
├── string_calculator.dart	                 # Class that handles calculations of List of numbers of type String
│
├── test	                    
│   ├── string_calculator_test.dart          # Unit tests for class StringCalculator		
│   └── widget_test.dart                     # UI tests for default Counter App  
│
├── pubspec.yaml			                 # Project Dependencies
└── README.md				                 # Project README
```

## TDD Workflow
- **Step 1**: Write a failing test (e.g. returning zero for empty string).
- **Step 2**: Implement the method body under StringCalculator minimally to satisfy the test.
- **Step 3**: Run tests and ensure they pass.
- **Step 4**: Refactor code for clarity and maintainability.
- **Step 5**: Repeat for each feature (Strings with +ve,-ve, delimiters & other characters).

---

## Getting Started

### Prerequisites
- Flutter SDK installed
- Dart SDK installed

### Installation
Install dependencies: `flutter pub get`