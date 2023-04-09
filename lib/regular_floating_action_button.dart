import 'package:flutter/material.dart';

class RegularFloatingActionButton extends StatefulWidget {
  const RegularFloatingActionButton({super.key, required this.title});

  final String title;

  @override
  State<RegularFloatingActionButton> createState() =>
      _RegularFloatingActionButtonState();
}

class _RegularFloatingActionButtonState
    extends State<RegularFloatingActionButton> {
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
              'Regular FloatingActionButton',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
