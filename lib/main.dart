from pathlib import Path

content = """import 'package:flutter/material.dart';

void main() {
  runApp(const ArabChatApp());
}

class ArabChatApp extends StatelessWidget {
  const ArabChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Arab Chat',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF6750A4),
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Arab Chat'),
          centerTitle: true,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.forum_rounded,
                  size: 90,
                  color: Color(0xFF6750A4),
                ),
                const SizedBox(height: 20),
                const Text(
                  'مرحباً بك في Arab Chat',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 12),
                const Text(
                  'تواصل مع أصدقائك في مكان واحد',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 28),
                SizedBox(
                  width: double.infinity,
                  child: FilledButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.chat),
                    label: const Text('المحادثات'),
                  ),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.person),
                    label: const Text('الملف الشخصي'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
"""

path = Path("/mnt/data/main.dart")
path.write_text(content, encoding="utf-8")
print(f"تم إنشاء الملف: {path}")
