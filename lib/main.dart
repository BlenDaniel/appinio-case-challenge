import 'package:appinio_case_challenge/views/app.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'models/app_state_model.dart';

void main() {
  return runApp(
    ChangeNotifierProvider<AppStateModel>(            // NEW
      create: (_) => AppStateModel()..loadForcasts(), // NEW
      child: const CupertinoForcastApp(),               // NEW
    ),
  );
}