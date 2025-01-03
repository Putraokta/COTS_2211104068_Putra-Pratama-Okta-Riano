import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter GetX App',
      initialRoute: AppPages.onboarding,  // Halaman pertama yang ditampilkan
      getPages: AppPages.routes,          // Daftar rute aplikasi yang sudah didefinisikan
      theme: ThemeData.light().copyWith(  // Tema terang
        primaryColor: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
          titleTextStyle: TextStyle(color: Colors.white),
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          bodyLarge: TextStyle(fontSize: 16),
        ),
      ),
      darkTheme: ThemeData.dark().copyWith(  // Tema gelap
        primaryColor: Colors.blue,
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
          titleTextStyle: TextStyle(color: Colors.white),
        ),
        textTheme: TextTheme(
          displayLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          bodyLarge: TextStyle(fontSize: 16),
        ),
      ),
      themeMode: ThemeMode.system,        // Mode tema mengikuti pengaturan sistem (terang atau gelap)
      debugShowCheckedModeBanner: false,  // Menonaktifkan banner debug di sudut kanan atas
      defaultTransition: Transition.fade, // Pengaturan transisi default saat navigasi
      transitionDuration: Duration(milliseconds: 300),  // Durasi transisi
      enableLog: true,  // Menyala/Matikan log GetX (untuk debug)
    );
  }
}
