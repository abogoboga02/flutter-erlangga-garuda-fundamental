import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Project Angga',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String status = "unknown";
  double blg1 = 0;
  double blg2 = 0;
  double bmi = 0;

  Color? statusColor = Colors.black;

  final blg1Controller = TextEditingController();
  final blg2Controller = TextEditingController();

  void tambah() {
    blg1 = double.parse(blg1Controller.text);
    blg2 = double.parse(blg2Controller.text);

    bmi = blg1 + blg2;
  }

  void kali() {
    blg1 = double.parse(blg1Controller.text);
    blg2 = double.parse(blg2Controller.text);

    bmi = blg1 * blg2;
  }

  void kurang() {
    blg1 = double.parse(blg1Controller.text);
    blg2 = double.parse(blg2Controller.text);

    bmi = blg1 - blg2;
  }

  void bagi() {
    blg1 = double.parse(blg1Controller.text);
    blg2 = double.parse(blg2Controller.text);

    bmi = blg1 / blg2;
  }

  @override
  void dispose() {
    blg1Controller.dispose();
    blg2Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kalkulator"),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          Column(
            children: [
              Text(
                "Hasil : $bmi",
                style: TextStyle(
                  fontSize: 64,
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 8,
            ),
            child: TextField(
              controller: blg1Controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter bilangan pertama",
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 8,
            ),
            child: TextField(
              controller: blg2Controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter bilangan kedua",
              ),
            ),
          ),
          Container(
            width: 200,
            height: 45,
            margin: EdgeInsets.all(10),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color(0xffF18265),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                setState(() {
                  tambah();
                });
              },
              child: Text(
                "+",
                style: TextStyle(
                  color: Color(0xffffffff),
                ),
              ),
            ),
          ),
          Container(
            width: 200,
            height: 45,
            margin: EdgeInsets.all(10),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color(0xffF18265),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                setState(() {
                  kali();
                });
              },
              child: Text(
                "x",
                style: TextStyle(
                  color: Color(0xffffffff),
                ),
              ),
            ),
          ),
          Container(
            width: 200,
            height: 45,
            margin: EdgeInsets.all(10),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color(0xffF18265),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                setState(() {
                  kurang();
                });
              },
              child: Text(
                "-",
                style: TextStyle(
                  color: Color(0xffffffff),
                ),
              ),
            ),
          ),
          Container(
            width: 200,
            height: 45,
            margin: EdgeInsets.all(10),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color(0xffF18265),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                setState(() {
                  bagi();
                });
              },
              child: Text(
                "/",
                style: TextStyle(
                  color: Color(0xffffffff),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
