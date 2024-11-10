import 'package:flutter/material.dart';

class DailyWorkout extends StatelessWidget {
  const DailyWorkout({super.key});  // Added const constructor

  final List<Map<String, String>> exercises = const [  // Added const keyword
    {"name": "Squats", "sets": "3 sets, 12 reps"},
    {"name": "Bench Press", "sets": "3 sets, 10 reps"},
    {"name": "Deadlifts", "sets": "3 sets, 8 reps"},
    {"name": "Shoulder Press", "sets": "3 sets, 10 reps"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daily Workout'),
      ),
      body: ListView.builder(
        itemCount: exercises.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(exercises[index]['name']!),
            subtitle: Text(exercises[index]['sets']!),
          );
        },
      ),
    );
  }
}
   
