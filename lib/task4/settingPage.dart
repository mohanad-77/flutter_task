import 'package:flutter/material.dart';
class settingPage extends StatelessWidget {
  const settingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.settings,size: 30,color: Colors.grey,),
          SizedBox(height: 20,),
          Text('الاعـدادات',style: TextStyle(fontSize: 24,color: Colors.grey),)
        ],
      ),
    );
  }
}

