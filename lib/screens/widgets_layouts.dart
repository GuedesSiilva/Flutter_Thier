import 'package:flutter/material.dart';

class WidgetsLayout extends StatelessWidget {
  const WidgetsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Widgets de Layout")),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => WidgetsLayout()),
            ),
            child: Text("Widgets de Layout"),
          ),
        ], // Children
      ),
    );
  }
}
