import 'package:flutter/material.dart';
import 'package:its_idea/page2.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController name = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ma\'lumotlar Kiriting'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                // Ism uchun TextField
                TextFormField(
                  controller: name,
                  decoration: InputDecoration(
                    labelText: 'Ism',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Iltimos, ism kiriting.';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),

                // Familiya uchun TextField
                TextFormField(
                  controller: lastname,
                  decoration: InputDecoration(
                    labelText: 'Familiya',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person_outline),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Iltimos, familiya kiriting.';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),

                // Telefon raqam uchun TextField
                TextFormField(
                  controller: phone,
                  decoration: InputDecoration(
                    labelText: 'Telefon Raqam',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.phone),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Iltimos, telefon raqamini kiriting.';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(height: 20),

                // Email uchun TextField
                TextFormField(
                  controller: email,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Iltimos, email kiriting.';
                    } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                        .hasMatch(value)) {
                      return 'Iltimos, to\'g\'ri email formatini kiriting.';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 30),

                // Saqlash tugmasi
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Ikkinchi sahifaga o'tish va ma'lumotlarni uzatish
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Page2(
                            name: name.text,
                            lastname: lastname.text,
                            phone: phone.text,
                            email: email.text,
                          ),
                        ),
                      );
                    }
                  },
                  child: Text('Save'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
