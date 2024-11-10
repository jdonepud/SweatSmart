// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkTheme = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SweatSmart',
      theme: isDarkTheme ? ThemeData.dark() : ThemeData.light(),
      home: HomePage(
        isDarkTheme: isDarkTheme,
        toggleTheme: toggleTheme,
      ),
    );
  }

  void toggleTheme() {
    setState(() {
      isDarkTheme = !isDarkTheme;
    });
  }
}

class HomePage extends StatelessWidget {
  final bool isDarkTheme;
  final VoidCallback toggleTheme;

  const HomePage(
      {super.key, required this.isDarkTheme, required this.toggleTheme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SweatSmart'),
        actions: [
          IconButton(
            icon: Icon(isDarkTheme ? Icons.wb_sunny : Icons.nights_stay),
            onPressed: toggleTheme,
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
          const CircleAvatar(
            backgroundImage: AssetImage('assets/placeholder-user.jpg'),
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              FitnessDashboard(),
              SizedBox(height: 16),
              WorkoutCalendar(),
              SizedBox(height: 16),
              DailyWorkout(),
              SizedBox(height: 16),
              WorkoutLog(),
              SizedBox(height: 16),
              ProgressTracking(),
              SizedBox(height: 16),
              MotivationalTips(),
            ],
          ),
        ),
      ),
    );
  }
}

class FitnessDashboard extends StatelessWidget {
  const FitnessDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Fitness Dashboard',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).textTheme.bodyLarge?.color,
              ),
            ),
            const SizedBox(height: 16),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DashboardItem(
                    label: 'Weight', value: ' 175 lbs', color: Colors.orange),
                // DashboardItem(label: 'Body Fat', value: '18%', color: Colors.pink),
                DashboardItem(
                    label: 'Steps', value: '12,345', color: Colors.green),
                DashboardItem(
                    label: 'Workouts', value: '5', color: Colors.blue),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardItem extends StatelessWidget {
  final String label;
  final String value;
  final Color color;

  const DashboardItem(
      {super.key,
      required this.label,
      required this.value,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            color: Theme.of(context).textTheme.bodyLarge?.color,
          ),
        ),
      ],
    );
  }
}

class WorkoutCalendar extends StatelessWidget {
  const WorkoutCalendar({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Workout Calendar',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).textTheme.bodyLarge?.color,
              ),
            ),
            const SizedBox(height: 16),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalendarDay(day: 'Mon', workout: 'Legs', color: Colors.red),
                CalendarDay(day: 'Tue', workout: 'Chest', color: Colors.orange),
                CalendarDay(day: 'Wed', workout: 'Back', color: Colors.yellow),
                CalendarDay(
                    day: 'Thu', workout: 'Shoulders', color: Colors.green),
                CalendarDay(day: 'Fri', workout: 'Arms', color: Colors.blue),
                CalendarDay(day: 'Sat', workout: 'Rest', color: Colors.purple),
                CalendarDay(day: 'Sun', workout: 'Legs', color: Colors.pink),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CalendarDay extends StatelessWidget {
  final String day;
  final String workout;
  final Color color;

  const CalendarDay(
      {super.key,
      required this.day,
      required this.workout,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          day,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          workout,
          style: TextStyle(
            fontSize: 14,
            color: Theme.of(context).textTheme.bodyMedium?.color,
          ),
        ),
      ],
    );
  }
}

class DailyWorkout extends StatelessWidget {
  const DailyWorkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Daily Workout',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).textTheme.bodyLarge?.color,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Full Body Workout',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).textTheme.bodyLarge?.color,
              ),
            ),
            Text(
              'Recommended for your fitness level',
              style: TextStyle(
                fontSize: 14,
                color: Theme.of(context).textTheme.bodyMedium?.color,
              ),
            ),
            const SizedBox(height: 16),
            const WorkoutItem(exercise: 'Squats', sets: '3 sets, 12 reps'),
            const WorkoutItem(exercise: 'Bench Press', sets: '3 sets, 10 reps'),
            const WorkoutItem(exercise: 'Deadlifts', sets: '3 sets, 8 reps'),
            const WorkoutItem(
                exercise: 'Shoulder Press', sets: '3 sets, 10 reps'),
          ],
        ),
      ),
    );
  }
}

class WorkoutItem extends StatelessWidget {
  final String exercise;
  final String sets;

  const WorkoutItem({super.key, required this.exercise, required this.sets});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            exercise,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).textTheme.bodyLarge?.color,
            ),
          ),
          Text(
            sets,
            style: TextStyle(
              fontSize: 14,
              color: Theme.of(context).textTheme.bodyMedium?.color,
            ),
          ),
        ],
      ),
    );
  }
}

class WorkoutLog extends StatelessWidget {
  const WorkoutLog({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Workout Log',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).textTheme.bodyLarge?.color,
              ),
            ),
            const SizedBox(height: 16),
            const WorkoutLogItem(
              exercise: 'Bench Press',
              sets: '3 sets, 10 reps, 150 lbs',
              date: 'Oct 8, 2023',
            ),
            const WorkoutLogItem(
              exercise: 'Squats',
              sets: '3 sets, 12 reps, 200 lbs',
              date: 'Oct 6, 2023',
            ),
            const WorkoutLogItem(
              exercise: 'Deadlifts',
              sets: '3 sets, 8 reps, 225 lbs',
              date: 'Oct 4, 2023',
            ),
            const WorkoutLogItem(
              exercise: 'Shoulder Press',
              sets: '3 sets, 10 reps, 100 lbs',
              date: 'Oct 2, 2023',
            ),
          ],
        ),
      ),
    );
  }
}

class WorkoutLogItem extends StatelessWidget {
  final String exercise;
  final String sets;
  final String date;

  const WorkoutLogItem(
      {super.key,
      required this.exercise,
      required this.sets,
      required this.date});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            exercise,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).textTheme.bodyLarge?.color,
            ),
          ),
          Text(
            sets,
            style: TextStyle(
              fontSize: 14,
              color: Theme.of(context).textTheme.bodyMedium?.color,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                date,
                style: TextStyle(
                  fontSize: 12,
                  color: Theme.of(context).textTheme.bodyMedium?.color,
                ),
              ),
              TextButton(
                onPressed: () {},
                child:
                    const Text('View', style: TextStyle(color: Colors.indigo)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProgressTracking extends StatelessWidget {
  const ProgressTracking({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Progress Tracking',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).textTheme.bodyLarge?.color,
              ),
            ),
            const SizedBox(height: 16),
            const LineChart(title: 'Weight'),
            const SizedBox(height: 16),
            const LineChart(title: 'Body Fat %'),
          ],
        ),
      ),
    );
  }
}

class LineChart extends StatelessWidget {
  final String title;

  const LineChart({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).textTheme.bodyLarge?.color,
          ),
        ),
        const SizedBox(
          height: 200,
          child: Placeholder(), // Replace with a real chart widget
        ),
      ],
    );
  }
}

class MotivationalTips extends StatelessWidget {
  const MotivationalTips({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Tips',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).textTheme.bodyLarge?.color,
              ),
            ),
            const SizedBox(height: 16),
            const TipItem(
              title: 'Stay Consistent',
              description:
                  'Consistency is key to achieving your fitness goals. Stick to your workout routine and don\'t let setbacks discourage you.',
            ),
            const TipItem(
              title: 'Celebrate Small Wins',
              description:
                  'Don\'t forget to celebrate your progress, no matter how small. Each step forward is a victory worth acknowledging.',
            ),
            const TipItem(
              title: 'Find Joy in the Process',
              description:
                  'Embrace the journey and find ways to enjoy the process. Music, podcasts, or workout buddies can make your workouts more enjoyable.',
            ),
          ],
        ),
      ),
    );
  }
}

class TipItem extends StatelessWidget {
  final String title;
  final String description;

  const TipItem({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).textTheme.bodyLarge?.color,
            ),
          ),
          Text(
            description,
            style: TextStyle(
              fontSize: 14,
              color: Theme.of(context).textTheme.bodyMedium?.color,
            ),
          ),
        ],
      ),
    );
  }
}
