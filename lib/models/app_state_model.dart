// THIS IS A SAMPLE FILE ONLY. Get the full content at the link above.

import 'package:flutter/foundation.dart' as foundation;
import 'package:flutter/material.dart';

import 'app_models.dart';
import 'package:appinio_case_challenge/api/forcast_repository.dart';

class AppStateModel extends foundation.ChangeNotifier {
  // All the available products.
  late Forcast _availableForcasts;

  void loadForcasts() async {
    _availableForcasts = await ForcastsRepository.loadForcast();
    notifyListeners();
  }

  Future<Forcast> getForcastOnce() async {
    return await ForcastsRepository.loadForcast();
  }



// THIS IS A SAMPLE FILE ONLY. Get the full content at the link above.
}
