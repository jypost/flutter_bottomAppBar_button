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
        primarySwatch: Colors.blue,
      ),
      home: const BottomButtonSample(),
    );
  }
}

class BottomButtonSample extends StatelessWidget {
  const BottomButtonSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomButton Sample'),
      ),
      body: const Center(child: Text('contents')),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: GestureDetector(
          child: Container(
            height: 60,
            width: double.infinity,
            alignment: Alignment.center,
            child: const Text('button', style: TextStyle(color: Colors.white),),
          ),
          onTap: () {
            print('tap');
          },
        ),
      ),
    );
  }

}