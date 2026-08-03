import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chapter 3 Lab'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        // เพิ่ม Padding รอบ Column
        padding: const EdgeInsets.all(16.0),
        child: Column(
          // ใช้ Column สำหรับเลย์เอาต์แนวตั้ง
          crossAxisAlignment:
              CrossAxisAlignment.center, // จัดกึ่งกลางไอเท็มแนวนอน
          children: <Widget>[
            // วิดเจ็ตต่างๆ จะมาที่นี่ภายในลิสต์ children ของ Column
            Image.network(
              'https://picsum.photos/seed/flutter/400/200',
              height: 150, // จำกัดความสูง
              fit: BoxFit.contain,
              loadingBuilder: (context, child, progress) {
                return progress == null
                    ? child
                    : const Center(child: CircularProgressIndicator());
              },
              errorBuilder: (context, error, stackTrace) {
                return const Center(
                  child: Text(
                    'ไม่สามารถโหลดรูปภาพได้',
                    style: TextStyle(color: Colors.red),
                  ),
                );
              },
            ),
            const SizedBox(height: 20), 
            Image.asset(
              'assets/images/mesotoday-windows-2360920_1920.png', // ใช้พาธ asset จริงของคุณ
              height: 100,
              errorBuilder: (context, error, stackTrace) {
                return const Text(
                  'เกิดข้อผิดพลาดในการโหลด asset',
                  style: TextStyle(color: Colors.red),
                );
              },
            ),
            const SizedBox(height: 20),
            Container(
              // กล่องสีอำพันจากแล็บ บทที่ 3
              width: 300.0, // หรือปรับตามต้องการ
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.amber.shade100, // สีอำพันอ่อนลงเล็กน้อย
                borderRadius: BorderRadius.circular(10.0),
              ),
              child:  Text(
                // คงข้อความไว้ก่อน
                'สวัสดี วิดเจ็ต Flutter!',
                textAlign: TextAlign.center,
                style: GoogleFonts.prompt(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text('1'),
                Text('2'),
                Text('3')
                
              ],
            )
          ],
        ),
      ),
    );
  }
}
