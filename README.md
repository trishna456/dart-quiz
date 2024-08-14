# Dart Quiz App

This Flutter app is a quiz application developed using Dart. It presents questions, records user answers, and displays the results at the end of the quiz. The app follows Flutter best practices, using stateless and stateful widgets, and state management to ensure a seamless user experience.

## Key Features

- **Question Shuffling**: Randomizes question order for each quiz attempt.
- **Answer Tracking**: Tracks user answers and compares them to the correct answers.
- **Results Summary**: Provides a summary of correct and incorrect answers at the end of the quiz.
- **Responsive UI**: Utilizes Google Fonts for styling and responsive layout design.
- **Restart Functionality**: Allows users to restart the quiz and try again.

## Technical Details

### Stateless and Stateful Widgets

The app makes use of both stateless and stateful widgets to manage the UI and state efficiently. Stateless widgets are used where the UI does not change dynamically, while stateful widgets handle parts of the UI that change in response to user interactions.

### State Management with `setState`

State management is achieved using the `setState` method, which ensures that the UI updates correctly when the state changes. For example, the `ResultsScreen` and `QuestionsScreen` widgets rely on `setState` to update the displayed content based on user input and quiz progress.

### Conditional Rendering

Conditional rendering is used to switch between different screens, such as the start screen, questions screen, and results screen. This is achieved by maintaining the current screen state and using conditional statements to render the appropriate widget.

### Gradient Background

A gradient background is implemented using the `BoxDecoration` and `LinearGradient` classes. This adds a visually appealing background to the app, enhancing the user experience.

### Google Fonts Integration

The app integrates Google Fonts using the `google_fonts` package. This allows for custom font styles, providing a consistent and aesthetically pleasing look across different devices.

### Data Handling

Quiz questions and answers are managed using Dart's list and map data structures. The `QuestionsSummary` widget, for example, uses a list of maps to display each question along with the user's answer and the correct answer.

### Responsive Design

The app is designed to be responsive, adjusting to different screen sizes and orientations. This ensures a consistent user experience across various devices, from mobile phones to tablets.

## How to Run

1. Clone the repository.
2. Ensure you have Flutter installed on your machine.
3. Navigate to the project directory and run `flutter pub get` to install dependencies.
4. Use `flutter run` to start the app on your preferred device or emulator.


## Getting Started with Flutter

For help getting started with Flutter, view the online [documentation](https://flutter.dev/docs).

Check out the code to explore more about Flutter's widget tree and state management!
