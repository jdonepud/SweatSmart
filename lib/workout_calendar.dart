import 'package:flutter/material.dart';

class WorkoutCalendar extends StatelessWidget {
  const WorkoutCalendar({super.key});  // Added const constructor

  final List<String> days = const ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"];  // Added const keyword
  final List<String> workouts = const ["Legs", "Chest", "Back", "Shoulders", "Arms", "Rest", "Legs"];  // Added const keyword

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Workout Calendar'),
      ),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: days.map((day) => Text(day)).toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: workouts.map((workout) => Text(workout)).toList(),
          ),
        ],
      ),
    );
  }
}
