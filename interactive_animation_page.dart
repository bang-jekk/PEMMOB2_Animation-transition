import 'package:flutter/material.dart';

class InteractiveAnimationPage extends StatefulWidget {
  const InteractiveAnimationPage({super.key});

  @override
  State<InteractiveAnimationPage> createState() =>
      _InteractiveAnimationPageState();
}

class _InteractiveAnimationPageState extends State<InteractiveAnimationPage> {
  double scale = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Interactive Animation')),
      body: Center(
        child: GestureDetector(
          onTapDown: (_) => setState(() => scale = 0.9),
          onTapUp: (_) => setState(() => scale = 1.0),
          onTapCancel: () => setState(() => scale = 1.0),
          child: AnimatedScale(
            scale: scale,
            duration: const Duration(milliseconds: 200),
            child: Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: 32, vertical: 16),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Text(
                'Beli Produk KAHF 🤑 💸',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
