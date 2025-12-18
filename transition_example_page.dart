import 'package:flutter/material.dart';

class TransitionExamplePage extends StatelessWidget {
  const TransitionExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page Transition')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Buka Detail Produk'),
          onPressed: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, animation, __) =>
                    FadeTransition(
                      opacity: animation,
                      child: const DetailPage(),
                    ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail KAHF')),
      body: const Center(
        child: Text(
          'KAHF Body Wash\nKAHF Face Wash\nKAHF Parfum\nKAHF Serum\nKAHF Moisturizer\nKAHF Sunscreen',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
