import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(Object context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Giriş Ekranı'),
          backgroundColor: Colors.orange,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.all(12),
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(border: Border.all()),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(children: [
                      Expanded(child: Text('Kullanıcı Adı ')),
                      Expanded(
                        child: TextFormField(),
                        flex: 2,
                      ),
                    ]),
                    Row(
                      children: [
                        Expanded(child: Text('Şifre ')),
                        Expanded(
                          child: TextFormField(),
                          flex: 2,
                        ),
                      ],
                    ),
                    Row(
                      children: [],
                    )
                  ],
                ),
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Giriş Yap',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        ));

    throw UnimplementedError();
  }
}
