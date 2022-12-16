import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TextEditingController titals = TextEditingController();
  TextEditingController details = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.orange,
      ),
      appBar: AppBar(centerTitle: true, title: Text('Note Book')),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(children: [
              TextFormField(
                controller: titals,
                validator: (v) {
                  if (v!.isEmpty) {
                    return "Please Enter Title";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                    labelText: "Enter Title",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: details,
                maxLines: 7,
                minLines: 1,
                validator: (v) {
                  if (v!.isEmpty) {
                    return "Please Enter Detail";
                  } else {
                    return null;
                  }
                },
                // keyboardType:
                decoration: InputDecoration(
                    labelText: "Enter Detail",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.orange),
                      minimumSize:
                          MaterialStateProperty.all(Size(double.infinity, 45))),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {}
                  },
                  child: Text('ADD')),
            ]),
          ),
        ),
      )),
    );
  }
}
