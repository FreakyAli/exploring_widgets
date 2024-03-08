import 'package:exploring_widgets/pages/buttons.dart';
import 'package:flutter/material.dart';

const String buttonsScreen = 'Buttons';

const List<String> widgets = [buttonsScreen];

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Main page')),
      ),
      body: Center(
        child: ListView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: widgets.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ButtonsPage()),
                )
              },
              child: ListTile(
                title: Text(
                  "Widget: ${widgets[index]}",
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
