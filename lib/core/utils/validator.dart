// lib/core/utils/validators.dart

class Validators {
  // Validasi nomor telepon (contoh dengan regex sederhana)
  static String? validatePhoneNumber(String value) {
    // Cek apakah nomor telepon terdiri dari 10-15 digit
    final phoneRegExp = RegExp(r'^\+?[1-9][0-9]{9,14}$');
    if (value.isEmpty) {
      return 'Nomor telepon tidak boleh kosong';
    } else if (!phoneRegExp.hasMatch(value)) {
      return 'Nomor telepon tidak valid';
    }
    return null; // Valid
  }

  // Validasi email
  static String? validateEmail(String value) {
    final emailRegExp = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    if (value.isEmpty) {
      return 'Email tidak boleh kosong';
    } else if (!emailRegExp.hasMatch(value)) {
      return 'Email tidak valid';
    }
    return null; // Valid
  }

  // Validasi password (harus mengandung minimal 6 karakter)
  static String? validatePassword(String value) {
    if (value.isEmpty) {
      return 'Password tidak boleh kosong';
    } else if (value.length < 6) {
      return 'Password harus terdiri dari minimal 6 karakter';
    }
    return null; // Valid
  }
}
