import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Daftar Mahasiswa'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Menentukan teks berada di sisi kiri
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              TeksUtama(
                teks1: 'Muhtarulloh',
                teks2: 'NIM : STI202102153',
              ),
              TeksUtama(
                teks1: 'Ade Setiawan',
                teks2: 'NIM : STI202102159',
              ),
              TeksUtama(
                teks1: 'Sulistiyo',
                teks2: 'NIM : STI202102161',
              ),
              TeksUtama(
                teks1: 'Aditya Prima Darmawan',
                teks2: 'NIM : STI202102163',
              ),
              TeksUtama(
                teks1: 'Trihanggoro',
                teks2: 'NIM : STI202102166',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TeksUtama extends StatelessWidget {
  final String teks1;
  final String teks2;

  const TeksUtama({
    Key? key,
    required this.teks1,
    required this.teks2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start, // Menentukan teks berada di sisi kiri
        children: [
          Text(
            teks1,
            textDirection: TextDirection.ltr,
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
          Text(
            teks2,
            textDirection: TextDirection.ltr,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 61, 59, 59),
            ),
          ),
        ],
      ),
    );
  }
}
