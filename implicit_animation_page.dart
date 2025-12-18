import 'package:flutter/material.dart';

class ImplicitAnimationPage extends StatefulWidget {
  const ImplicitAnimationPage({super.key});

  @override
  State<ImplicitAnimationPage> createState() => _ImplicitAnimationPageState();
}

class _ImplicitAnimationPageState extends State<ImplicitAnimationPage> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Implicit Animation')),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 800),
          curve: Curves.easeInOut,
          width: expanded ? 280 : 180,
          height: expanded ? 280 : 180,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(24),
          ),
          child: InkWell(
            onTap: () => setState(() => expanded = !expanded),
            child: const Center(
              child: Text(
                'KAHF\nFace Wash',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
