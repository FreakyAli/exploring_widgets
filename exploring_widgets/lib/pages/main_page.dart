import 'package:flutter/material.dart';
import 'package:exploring_widgets/my_app.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Main page')),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: widgets.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => {
              Navigator.pushNamed(
                context,
                widgets[index],
              ),
            },
            child: ListTile(
              title: Text(
                widgets[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
