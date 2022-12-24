import 'dart:async';
import 'package:flutter/material.dart';
import 'package:uap_mobile_lanjut/models/app_cache.dart';

// import 'models.dart';
class IlkomTab {
  static const int beranda = 0;
  static const int mahasiswa = 1;
  static const int mata_kuliah = 2;
}

class AppStateManager extends ChangeNotifier {
  // Checks to see if the user is logged in
  bool _loggedIn = false;
  // Checks to see if the user has completed onboarding
  bool _onboardingComplete = false;
  // Records the current tab the user is on.
  int _selectedTab = IlkomTab.beranda;
  // Stores user state properties on platform specific file system.
  final _appCache = AppCache();

  // Property getters.
  bool get isLoggedIn => _loggedIn;
  bool get isOnboardingComplete => _onboardingComplete;
  int get getSelectedTab => _selectedTab;

  // Initializes the app
  Future<void> initializeApp() async {
    // Check if the user is logged in
    _loggedIn = await _appCache.isUserLoggedIn();
    // Check if the user completed onboarding
    _onboardingComplete = await _appCache.didCompleteOnboarding();
  }

  void login(String username, String password) async {
    _loggedIn = true;
    await _appCache.cacheUser();
    notifyListeners();
  }

  void onboarded() async {
    _onboardingComplete = true;
    await _appCache.completeOnboarding();
    notifyListeners();
  }

  void goToTab(index) {
    _selectedTab = index;
    notifyListeners();
  }

  void goToRecipes() {
    _selectedTab = IlkomTab.mahasiswa;
    notifyListeners();
  }

  void logout() async {
    // Reset all properties once user logs out
    _loggedIn = false;
    // _onboardingComplete = true;
    _selectedTab = 0;

    // Reinitialize the app
    await _appCache.invalidate();
    await initializeApp();
    notifyListeners();
  }
}
