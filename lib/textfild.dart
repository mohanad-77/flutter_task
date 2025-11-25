import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Textfield Task',
      debugShowCheckedModeBanner: false,
      // تحديد الصفحة الرئيسية
      home: const TextFieldScreen(),
    );
  }
}

class TextFieldScreen extends StatefulWidget {
  const TextFieldScreen({super.key});

  @override
  State<TextFieldScreen> createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {

  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();


  void _copyText() {
    setState(() {
      _controller2.text = _controller1.text;
    });
  }


  void _navigateToNextPage() {
    String dataToSend = _controller1.text;

    Navigator.push(
      context,
      MaterialPageRoute(

        builder: (context) => TwoPage(passedName: dataToSend),
      ),
    );
  }

  @override
  void dispose() {

    _controller1.dispose();
    _controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(height: 20),


            TextField(
              controller: _controller1,
              decoration: InputDecoration(
                labelText: 'أدخل النص هنا',
                hintText: 'مثال: أحمد',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            const SizedBox(height: 20),


            TextField(
              controller: _controller2,
              readOnly: true,
              decoration: InputDecoration(
                labelText: 'النص المطبوع',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            const SizedBox(height: 30),


            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
                minimumSize: const Size(double.infinity, 50),
              ),
              onPressed: _copyText,
              child: const Text('طباعة النص في الحقل الثاني (Submit)'),
            ),
            const SizedBox(height: 10),


            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
                minimumSize: const Size(double.infinity, 50),
              ),
              onPressed: _navigateToNextPage,
              child: const Text('انتقال مع تمرير النص (Navigate)'),
            ),
          ],
        ),
      ),
    );
  }
}

// ----------------------------------------------------
// 2. الصفحة الثانية (TwoPage)

class TwoPage extends StatelessWidget {

  final String passedName;


  const TwoPage({
    super.key,
    required this.passedName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Two Page (Received Data)'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'البيانات التي تم استقبالها بنجاح:',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),

            Text(
              passedName,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange,
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {

                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              child: const Text('العودة للخلف'),
            ),
          ],
        ),
      ),
    );
  }
}