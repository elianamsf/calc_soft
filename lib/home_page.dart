import 'package:flutter/material.dart';

import 'app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget _body() {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text('Contador: $counter'),
        Row(
          children: const [
            Text('Oi '),
            Text('Linda!'),
            Text('Você consegue!'),
          ],
        )
      ]),
    );
  }

  _floatingActionButton() {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () {
        setState(() {
          counter++;
        });
      },
    );
  }

  _appBar() {
    return AppBar(
      title: Text("Calc Soft"),
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
