import 'package:flutter/material.dart';

class ExplicitAnimationPage extends StatefulWidget {
  const ExplicitAnimationPage({super.key});

  @override
  State<ExplicitAnimationPage> createState() => _ExplicitAnimationPageState();
}

class _ExplicitAnimationPageState extends State<ExplicitAnimationPage>
    with SingleTickerProviderStateMixin {

  late AnimationController controller;
  late Animation<double> rotationAnimation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    rotationAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(
      parent: controller,
      curve: Curves.easeInOut,
    ));

    controller.repeat();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Explicit Animation')),
      body: Center(
        child: AnimatedBuilder(
          animation: rotationAnimation,
          builder: (context, child) {
            return Transform.rotate(
              angle: rotationAnimation.value * 6.28,
              child: child,
            );
          },
          child: Container(
            padding: const EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(24),
            ),
            child: const Text(
              'KAHF\nParfum\nHarumyohhh 😍',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
          ),
        ),
      ),
    );
  }
}
