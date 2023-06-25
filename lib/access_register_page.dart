import 'package:flutter/material.dart';

class AccessRegisterPage extends StatefulWidget {
  const AccessRegisterPage({super.key});

  @override
  _AccessRegisterPageState createState() => _AccessRegisterPageState();
}

class _AccessRegisterPageState extends State<AccessRegisterPage> {
  String email = '';
  String password = '';
  String reEmail = '';
  String rePassword = '';

  _appBar() {
    return AppBar(
      title: Text("Register Access Data"),
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
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                    labelText: 'Email Address', border: OutlineInputBorder()),
              ),
              const SizedBox(height: 8),
              TextField(
                onChanged: (value) {
                  reEmail = value;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                    labelText: 'Repeat Email Address',
                    border: OutlineInputBorder()),
              ),
              const SizedBox(height: 8),
              TextField(
                onChanged: (value) {
                  password = value;
                },
                obscureText: true,
                decoration: const InputDecoration(
                    labelText: 'Password', border: OutlineInputBorder()),
              ),
              const SizedBox(height: 8),
              TextField(
                onChanged: (value) {
                  rePassword = value;
                },
                obscureText: true,
                decoration: const InputDecoration(
                    labelText: 'Repeat Password', border: OutlineInputBorder()),
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
                            Navigator.of(context)
                                .pushReplacementNamed('/pessoal');
                          },
                          child: const Text('Previous'),
                        ),
                        const SizedBox(height: 8),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacementNamed('/home');
                          },
                          child: const Text('Sing Up'),
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
