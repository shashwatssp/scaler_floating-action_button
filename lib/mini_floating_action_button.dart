import 'package:flutter/material.dart';

class MiniFloatingActionButton extends StatefulWidget {
  const MiniFloatingActionButton({super.key, required this.title});

  final String title;

  @override
  State<MiniFloatingActionButton> createState() =>
      _MiniFloatingActionButtonState();
}

class _MiniFloatingActionButtonState extends State<MiniFloatingActionButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Mini FloatingActionButton',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        mini: true,
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
