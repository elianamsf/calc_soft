import 'package:calc_soft/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PessoalPage extends StatefulWidget {
  const PessoalPage({super.key});

  @override
  _PessoalPageState createState() => _PessoalPageState();
}

class _PessoalPageState extends State<PessoalPage> {
  String email = '';
  String password = '';

  _appBar() {
    return AppBar(
      title: Text("Register Pessoal Data"),
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
                  email = value;
                },
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                    labelText: 'First Name', border: OutlineInputBorder()),
              ),
              const SizedBox(height: 8),
              TextField(
                onChanged: (value) {
                  email = value;
                },
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                    labelText: 'Last Name', border: OutlineInputBorder()),
              ),
              const SizedBox(height: 8),
              TextField(
                onChanged: (value) {
                  password = value;
                },
                keyboardType: TextInputType.datetime,
                decoration: const InputDecoration(
                    labelText: 'Date of birth', border: OutlineInputBorder()),
              ),
              const SizedBox(height: 8),
              TextField(
                onChanged: (value) {
                  password = value;
                },
                keyboardType: TextInputType.multiline,
                decoration: const InputDecoration(
                    labelText: 'Function', border: OutlineInputBorder()),
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
      body: _body(),
    );
  }
}
