import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TP 2 Provis 2024',
      theme: ThemeData(
        fontFamily: 'Poppins',
        
        // colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'My Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.grey[200], // Set the background color to light gray
        leading: IconButton(
          icon: Icon(Icons.arrow_back_rounded),
          onPressed: () {
            // Navigator.of(context).pop(); // Navigate back
          },
          color: Color(0xFF4A707A), // Set the color to #4A707A
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Align(
          alignment: Alignment.topLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Cari Dokter',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600, // Use FontWeight.w600 for SemiBold
                  color: Color(0xFF4A707A),
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 10,
                  color: Color(0xFF37363B),
                ),
              ),
              SizedBox(height: 32),
              TextField(
                decoration: InputDecoration(
                  // labelText: 'Cari Dokter',
                  hintText: 'Cari Dokter',
                  suffixIcon: Icon(Icons.search, color: Color(0xFF4A707A)),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFF94B0B7), // Set border color to 94B0B7
                      width: 1.0, // Set border width
                    ),
                    borderRadius: BorderRadius.circular(16.0), // Set border radius
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                  hintStyle: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFC2C8C5), // Color code for the hint text
                  ),
                ),
              ),
              SizedBox(height: 24),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Spesialisasi',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600, // Use FontWeight.w600 for SemiBold
                      color: Color(0xFF4A707A),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end, // Align to the end (right)
                    children: [
                      Text(
                        'Lihat Semua',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF4A707A),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


