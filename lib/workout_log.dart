import 'package:flutter/material.dart';

class WorkoutLog extends StatelessWidget {
  final List<Map<String, String>> logs = [
    {
      "name": "Bench Press",
      "details": "3 sets, 10 reps, 150 lbs",
      "date": "Oct 8, 2023"
    },
    {
      "name": "Squats",
      "details": "3 sets, 12 reps, 200 lbs",
      "date": "Oct 6, 2023"
    },
    {
      "name": "Deadlifts",
      "details": "3 sets, 8 reps, 225 lbs",
      "date": "Oct 4, 2023"
    },
    {
      "name": "Shoulder Press",
      "details": "3 sets, 10 reps, 100 lbs",
      "date": "Oct 2, 2023"
    }
  ];

  WorkoutLog(
      {super.key}); // You can keep the `const` here if you want to keep it for other reasons

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Workout Log'),
      ),
      body: ListView.builder(
        itemCount: logs.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(logs[index]['name']!),
            subtitle: Text(logs[index]['details']!),
            trailing: Text(logs[index]['date']!),
          );
        },
      ),
    );
  }
}
