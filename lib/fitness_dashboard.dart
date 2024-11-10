import 'package:flutter/material.dart';

class FitnessDashboard extends StatelessWidget {
  const FitnessDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fitness Dashboard'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Weight: 175 lbs', style: Theme.of(context).textTheme.headlineSmall),
            Text('Body Fat: 18%', style: Theme.of(context).textTheme.headlineSmall),
            Text('Steps: 12,345', style: Theme.of(context).textTheme.headlineSmall),
            Text('Workouts: 5', style: Theme.of(context).textTheme.headlineSmall),
          ],
        ),
      ),
    );
  }
}
