import 'package:flutter/material.dart';

import 'app_controller.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({super.key});

  @override
  _CreatePageState createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  String email = '';

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

  _floatingActionButton() {
    return FloatingActionButton(
      child: Icon(Icons.delete),
      onPressed: () {
        setState(() {
          //Navigator.of(context).pushReplacementNamed('/create');
        });
      },
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
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 150,
                height: 150,
                child: Image.asset('assets/images/logo2.png'),
              ),
              TextField(
                onChanged: (value) {
                  email = value;
                },
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                    labelText: 'Requirement Name',
                    border: OutlineInputBorder()),
              ),
              const SizedBox(height: 8),
              SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtonBar(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacementNamed('/home');
                          },
                          child: const Text('Home'),
                        ),
                        const SizedBox(height: 8),
                        ElevatedButton(
                          onPressed: () {
                            //Navigator.of(context).pushReplacementNamed('/home');
                          },
                          child: const Text('Create'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _drawer(),
      appBar: _appBar(),
      body: _body(),
      //floatingActionButton: _floatingActionButton(),
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
