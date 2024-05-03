import 'package:exploring_widgets/tabs/account.dart';
import 'package:exploring_widgets/tabs/dashboard.dart';
import 'package:exploring_widgets/tabs/notifications.dart';
import 'package:flutter/material.dart';

class TabsPage extends StatefulWidget {
  const TabsPage({super.key});

  @override
  State<TabsPage> createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Tabs"),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Dashboard', icon: Icon(Icons.home)),
              Tab(text: 'Account', icon: Icon(Icons.account_balance_wallet)),
              Tab(text: 'Notifications', icon: Icon(Icons.notifications)),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            DashboardPage(),
            AccountPage(),
            NotificationsPage(),
          ],
        ),
      ),
    );
  }
}
