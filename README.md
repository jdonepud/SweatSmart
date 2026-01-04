# SweatSmart

SweatSmart is a Flutter app that showcases a single-screen fitness dashboard with theme toggling, progress tracking, and workout planning widgets. Use it as a reference for building simple dashboards or as a starting point for your own prototypes.

## Features
- **Theme toggle:** Switch between light and dark themes from the app bar.
- **Fitness dashboard:** Display weight, steps, and completed workouts at a glance.
- **Workout calendar:** Browse the weekly plan with color-coded focus areas.
- **Daily workout plan:** View recommended routines with sets and reps.
- **Workout log:** Review recent sessions with dates and lift details.
- **Progress tracking:** Visualize weight changes and weekly workout counts.
- **Motivational tips:** Rotate through inspirational messages to keep workouts on track.

## Project structure
- `lib/main.dart` builds the `MaterialApp`, navigation scaffold, and composes the dashboard widgets (progress cards, motivational tips, calendar, and log).
- `lib/fitness_dashboard.dart`, `lib/workout_calendar.dart`, `lib/daily_workout.dart`, and `lib/workout_log.dart` provide standalone screens mirroring the main dashboard sections.
- `test/` holds the default Flutter widget test scaffold.

## Requirements
- Flutter SDK `>=3.4.3 <4.0.0`
- Xcode/Android Studio toolchains for iOS or Android development
- An emulator or physical device configured for Flutter

## Quick start
1. Install Flutter and set up your environment:
   ```bash
   flutter doctor
   ```
   Resolve any reported issues (e.g., missing toolchains or device configuration) before continuing.
2. Fetch project dependencies:
   ```bash
   flutter pub get
   ```
3. (Optional) Enable web or desktop targets if you plan to run beyond mobile:
   ```bash
   flutter config --enable-web
   flutter config --enable-macos-desktop
   flutter config --enable-windows-desktop
   ```

## Running the app
Launch the app on an attached device or emulator:
```bash
flutter run
```

## Testing
Run the Flutter widget tests:
```bash
flutter test
```

## Linting and formatting
Check code style and apply formatting:
```bash
flutter analyze
flutter format lib test
```

## Assets
The app references `assets/placeholder-user.jpg` for the app bar avatar. Add an image at that path or update the asset reference to avoid runtime errors.

## Troubleshooting
- Confirm `flutter doctor` shows no unresolved issues before running the app.
- If the avatar image fails to load, verify the asset path and ensure it is declared in `pubspec.yaml` under `flutter/assets`.
- If you see dependency conflicts, delete the `.dart_tool` and `build` directories, then rerun `flutter pub get`.
