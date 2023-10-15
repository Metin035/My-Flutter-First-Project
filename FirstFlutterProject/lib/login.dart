import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text("Veri gir"),
              TextField(
                controller: textEditingController,
              ),
              TextButton(
                  onPressed: (){
                    setState(() {

                    });
                  },
                  child: Text("Gönder")
              ),
              Text("Veri: ${int.tryParse(textEditingController.text)}"),
            ],
          ),
        ),
      ),
    );
  }
}
