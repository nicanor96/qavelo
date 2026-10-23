import 'package:flutter/material.dart';

void main() => runApp(QaveloApp());

class QaveloApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QAVELO',
      debugShowCheckedModeBanner: false,
      home: QaveloHome(),
    );
  }
}

class QaveloHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QAVELO'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.check_circle, size: 100, color: Colors.green),
            SizedBox(height: 20),
            Text('QAVELO marche !', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('L\'app ne se ferme plus'),
          ],
        ),
      ),
    );
  }
}
