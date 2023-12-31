import 'package:flutter/material.dart';

import 'app_controller.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  _appBar() {
    return AppBar(
      title: Text("History"),
      iconTheme: const IconThemeData(),
      actions: [],
    );
  }

  _drawer() {
    return Drawer(
      child: Column(
        children: [
          const UserAccountsDrawerHeader(
            currentAccountPicture: ClipOval(
              child: Icon(Icons.person_outline_outlined),
            ),
            accountName: Text('Eliana França'),
            accountEmail: Text('eliana.m@email.com'),
          ),
          CustomSwitch(),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            subtitle: const Text('Go Home'),
            onTap: () => Navigator.of(context).pushReplacementNamed('/home'),
          ),
          ListTile(
            leading: const Icon(Icons.create),
            title: const Text('Create'),
            subtitle: const Text('Calculate Estimate'),
            onTap: () => Navigator.of(context).pushReplacementNamed('/create'),
          ),
          ListTile(
            leading: const Icon(Icons.history),
            title: const Text('History'),
            subtitle: const Text('Estimate history'),
            onTap: () => Navigator.of(context).pushReplacementNamed('/history'),
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            subtitle: const Text('End Session'),
            onTap: () => Navigator.of(context).pushReplacementNamed('/'),
          ),
        ],
      ),
    );
  }

  Widget _body() {
    final List<String> entries = <String>[
      'A',
      'B',
      'C',
      'D',
      'E',
      'F',
      'G',
      'H',
      'I'
    ];
    final List<int> colorCodes = <int>[
      900,
      800,
      700,
      600,
      500,
      400,
      300,
      200,
      100
    ];
    return SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: const Icon(Icons.calculate),
              title: Text('Entry ${entries[index]}'),
              subtitle: Text('Entry ${entries[index]}'),
              onTap: () =>
                  Navigator.of(context).pushReplacementNamed('/viewItem'),
            );
          },
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
        ));
  }

  _floatingActionButton() {
    return FloatingActionButton(
      child: Icon(Icons.keyboard_backspace_outlined),
      onPressed: () {
        setState(() {
          Navigator.of(context).pushReplacementNamed('/home');
        });
      },
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _drawer(),
      appBar: _appBar(),
      body: _body(),
      floatingActionButton: _floatingActionButton(),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          const SizedBox(width: 15),
          const Icon(Icons.brightness_5_sharp),
          const SizedBox(width: 30),
          const Text('Enable dark theme'),
          Switch(
            value: AppController.instance.isDartTheme,
            onChanged: (value) {
              AppController.instance.changeTheme();
            },
          ),
        ],
      ),
    );
  }
}
