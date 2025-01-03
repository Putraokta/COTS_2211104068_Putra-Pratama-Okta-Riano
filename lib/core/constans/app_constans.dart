// lib/core/constants/app_constants.dart

class AppConstants {
  // API Base URL
  static const String apiBaseUrl = 'https://api.example.com';

  // Error Messages
  static const String networkError = 'Network Error, please try again.';
  static const String unexpectedError = 'Unexpected error occurred, please try again later.';

  // Success Messages
  static const String loginSuccess = 'Login successful!';
  static const String registrationSuccess = 'Registration successful!';

  // Validation Messages
  static const String invalidPhoneNumber = 'Invalid phone number format.';
  static const String invalidEmail = 'Invalid email address format.';
  static const String passwordTooShort = 'Password must be at least 6 characters long.';

  // Timeouts
  static const int requestTimeout = 30; // in seconds

  // Other constants
  static const int maxRetryAttempts = 3;
}
