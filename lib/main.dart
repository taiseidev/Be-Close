import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_sns_project/presentation/app.dart';
import 'package:my_sns_project/gen/firebase_options_prod.dart' as prod;
import 'package:my_sns_project/gen/firebase_options_stg.dart' as stg;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: getFirebaseOptions());
  await dotenv.load(fileName: ".env");
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => ProviderScope(
        child: App(),
      ),
    ),
  );
}

// 環境によってFirebaseプロジェクトを切り替え
FirebaseOptions getFirebaseOptions() {
  const flavor = String.fromEnvironment('FLAVOR');
  switch (flavor) {
    case 'stg':
      return stg.DefaultFirebaseOptions.currentPlatform;
    case 'prod':
      return prod.DefaultFirebaseOptions.currentPlatform;
    default:
      throw ArgumentError('Not available flavor');
  }
}
