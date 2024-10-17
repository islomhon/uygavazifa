import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  final String name;
  final String lastname;
  final String phone;
  final String email;

  Page2(
      {required this.name,
      required this.lastname,
      required this.phone,
      required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Sizning Profilingiz",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple[200],
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ism: $name',
                  style: TextStyle(fontSize: 18, color: Colors.deepPurple[700]),
                ),
                SizedBox(height: 10),
                Text(
                  'Familiya: $lastname',
                  style: TextStyle(fontSize: 18, color: Colors.deepPurple[700]),
                ),
                SizedBox(height: 10),
                Text(
                  'Telefon Raqam: $phone',
                  style: TextStyle(fontSize: 18, color: Colors.deepPurple[700]),
                ),
                SizedBox(height: 10),
                Text(
                  'Email: $email',
                  style: TextStyle(fontSize: 18, color: Colors.deepPurple[700]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
