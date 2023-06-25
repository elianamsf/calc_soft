import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'app_controller.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({super.key});

  @override
  _CreatePageState createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  @override
  _appBar() {
    return AppBar(
      title: Text("Create"),
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
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: []),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _drawer(),
      appBar: _appBar(),
      body: _body(),
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
