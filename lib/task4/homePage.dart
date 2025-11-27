import 'package:flutter/material.dart';
class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {

  TextEditingController controller1= TextEditingController();
  TextEditingController controller2= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: controller1,
            decoration: InputDecoration(
              hintText: "ادخل النص",
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: controller2,
            decoration: InputDecoration(
              hintText: "النص",
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                controller2.text=controller1.text;
              });
            },
            child: const Text("انسخ النص"),
          ),

        ],
      ),
    );
  }
}
