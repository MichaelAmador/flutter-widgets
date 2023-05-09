import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets/config/themes/app_theme.dart';

final isDarkModeProvider = StateProvider<bool>((ref) => false);

// Immutable
final colorListProvider = Provider((ref) => colorList);

final selectedColorProvider = StateProvider((ref) => 0);

// An object of type AppThme (Custom)

final themeNotifierProvider =
    StateNotifierProvider<ThemeNotifier, AppTheme>((ref) => ThemeNotifier());

class ThemeNotifier extends StateNotifier<AppTheme> {
  ThemeNotifier() : super(AppTheme());

  void toggleDarkMode() {
    state = state.copyWiht(isDarkMode: !state.isDarkMode);
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWiht(selectedColor: colorIndex);
  }
}
