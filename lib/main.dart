import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SharedPreferenceDemo(),
    );
  }
}

class SharedPreferenceDemo extends StatefulWidget {
  const SharedPreferenceDemo({super.key});

  @override
  State<SharedPreferenceDemo> createState() => _SharedPreferenceDemoState();
}

class _SharedPreferenceDemoState extends State<SharedPreferenceDemo> {
  int numberPreference = 0;
  bool booleanPreference = false;

  void increment() {
    setState(() {
      numberPreference++;
    });
  }

  void toggle() {
    setState(() {
      booleanPreference = !booleanPreference;
    });
  }

  void resetData() {
    setState(() {
      numberPreference = 0;
      booleanPreference = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shared Preference Demo'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              const Expanded(
                flex: 3,
                child: Text(
                  'Number Preference',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  '$numberPreference',
                  style: const TextStyle(fontSize: 16),
                ),
              ),
              Expanded(
                flex: 2,
                child: ElevatedButton(
                  onPressed: increment,
                  child: const Text(
                    'Increment',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Expanded(
                flex: 3,
                child: Text(
                  'Boolean Preference',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  '$booleanPreference',
                  style: const TextStyle(fontSize: 16),
                ),
              ),
              Expanded(
                flex: 2,
                child: ElevatedButton(
                  onPressed: toggle,
                  child: const Text('Toggle', style: TextStyle(fontSize: 12)),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          ElevatedButton(onPressed: resetData, child: const Text('Reset Data')),
        ],
      ),
    );
  }
}
