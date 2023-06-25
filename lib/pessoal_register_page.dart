import 'package:flutter/material.dart';

class PessoalPage extends StatefulWidget {
  const PessoalPage({super.key});

  @override
  _PessoalPageState createState() => _PessoalPageState();
}

class _PessoalPageState extends State<PessoalPage> {
  String firstName = '';
  String lastName = '';

  _appBar() {
    return AppBar(
      title: const Text("Register Pessoal Data"),
      iconTheme: const IconThemeData(),
      actions: [],
    );
  }

  Widget _body() {
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
                width: 130,
                height: 130,
                child: Image.asset('assets/images/logo2.png'),
              ),
              TextField(
                onChanged: (value) {
                  firstName = value;
                },
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                    labelText: 'First Name', border: OutlineInputBorder()),
              ),
              const SizedBox(height: 8),
              TextField(
                onChanged: (value) {
                  lastName = value;
                },
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                    labelText: 'Last Name', border: OutlineInputBorder()),
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
                            Navigator.of(context).pushReplacementNamed('/');
                          },
                          child: const Text('Previous'),
                        ),
                        const SizedBox(height: 8),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed('/register');
                          },
                          child: const Text('Next'),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appBar(),
        body: Stack(
          children: [
            _body(),
          ],
        ));
  }
}
