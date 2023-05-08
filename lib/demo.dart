import 'package:flutter/material.dart';
import 'package:scaler_fab_demo/extended_floating_action_button.dart';
import 'package:scaler_fab_demo/mini_floating_action_button.dart';
import 'package:scaler_fab_demo/regular_floating_action_button.dart';

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Example App',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 40),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const RegularFloatingActionButton(
                      title: 'Regular Floating Action Button');
                }));
              },
              child: const Text('Regular Floating Action Button'),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const ExtendedFloatingActionButton(
                        title: 'Extended Floating Action Button');
                  }));
                },
                child: const Text('Extended Floating Action Button')),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const MiniFloatingActionButton(
                      title: 'Mini Floating Action Button');
                }));
              },
              child: const Text('Mini Floating Action Button'),
            ),
          ],
        ),
      ),
    );
  }
}
