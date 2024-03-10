import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonsPage extends StatefulWidget {
  const ButtonsPage({super.key});

  @override
  State<ButtonsPage> createState() => _ButtonsPageState();
}

class _ButtonsPageState extends State<ButtonsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Buttons',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  width: 5.0,
                  color: Colors.black,
                ),
              ),
              child: const Text(
                'This is an outlined button',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                elevation: 10.0,
              ),
              child: const Text(
                'This is an elevated button',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  'This is a TextButton',
                )),
            const SizedBox(
              height: 20,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            FilledButton(
              onPressed: () {},
              child: const Text(
                "This is a filled button",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            FilledButton.tonal(
              onPressed: () {},
              child: const Text(
                "This is a filled button (tonal)",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CupertinoButton(
              child: const Text('This is cupertino button'),
              onPressed: () {},
              color: Colors.lightBlue,
            ),
            const SizedBox(
              height: 20,
            ),
            CupertinoButton.filled(
              child: const Text('This is cupertino button (filled)'),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
