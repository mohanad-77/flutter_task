import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'برنامج سبحة'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _counter1=0;
  int _counter2=0;

  void resetCounter(){
    setState(() {

      _counter=0;
      _counter1=0;
      _counter2=0;
    });

  }

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }
  void _incrementCounter1() {
    setState(() {

      _counter1++;
    });
  }
  void _incrementCounter2() {
    setState(() {

      _counter2++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(

        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Colors.blue,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
                'سبحان الله',
              style: TextStyle(
                fontSize: 30,
              ),),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,


            ),
            ElevatedButton(onPressed: _incrementCounter, child: Text("click",style: TextStyle(fontSize: 30),)

            ),

            const Text(
                'الحمد لله',
              style: TextStyle(
                fontSize: 30,
              ),
              

            ),
            Text(
              '$_counter1',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
        ElevatedButton(
          onPressed: _incrementCounter1,
          child: const Text(' click ',
          style: TextStyle(fontSize: 30),),),
            Text(
              'الله اكبر',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            Text(
              '$_counter2',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ElevatedButton(onPressed: _incrementCounter2, child: Text('click',style: TextStyle(fontSize: 30),))


          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: resetCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.refresh),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
