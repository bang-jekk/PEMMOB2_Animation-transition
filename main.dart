import 'package:flutter/material.dart';
import 'implicit_animation_page.dart';
import 'explicit_animation_page.dart';
import 'interactive_animation_page.dart';
import 'transition_example_page.dart';

void main() {
  runApp(const KahfApp());
}

class KahfApp extends StatelessWidget {
  const KahfApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KAHF Animation',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('🧴Latihan Animasi di produk KAHF 🧴 😎')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          menuButton(context, 'Implicit Animation', const ImplicitAnimationPage()),
          menuButton(context, 'Explicit Animation', const ExplicitAnimationPage()),
          menuButton(context, 'Page Transition', const TransitionExamplePage()),
          menuButton(context, 'Interactive Animation', const InteractiveAnimationPage()),
        ],
      ),
    );
  }

  Widget menuButton(BuildContext context, String title, Widget page) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: ListTile(
        title: Text(title),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => page),
          );
        },
      ),
    );
  }
}
