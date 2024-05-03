import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage>
    with TickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TabBar.secondary(
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          controller: controller,
          indicatorColor: Colors.blue,
          indicator: const BoxDecoration(
            color: Colors.lightBlueAccent,
          ),
          tabs: const <Widget>[
            Tab(
              text: 'Tab 1',
            ),
            Tab(
              text: 'Tab 2',
            ),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: controller,
            children: const <Widget>[
              Card(
                child: Center(
                    child: Text(
                  'This is the first tab',
                )),
              ),
              Card(
                child: Center(
                    child: Text(
                  'This is the second tab',
                )),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
