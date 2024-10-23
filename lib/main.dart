import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter WEB Academy Lecture #5'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Ми натискаємо на лічільник: ',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
              ),
              color: Colors.amber,
              child: const Text(
                'Текст всередині контейнера',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Image.network(
              'https://picsum.photos/id/40/200/300',
              width: 200,
              height: 100,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Hello world!',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrangeAccent,
                decoration: TextDecoration.underline,
                shadows: [
                  Shadow(
                    blurRadius: 5.0,
                    color: Colors.black45,
                    offset: Offset(3.0, 3.0),
                  ),
                ],
              ),
            ),
            Image.asset(
              Constants.dogImage,
              width: 200,
              height: 200,
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
            ElevatedButton(
              onPressed: _incrementCounter,
              child: const Text('Збільшити лічильник'),
            ),
          ],
        ),
      ),
    );
  }
}

class Constants {
  static const dogImage = 'assets/images/dog.jpg';
}
