import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets/config/themes/app_theme.dart';

final isDarkModeProvider = StateProvider<bool>((ref) => false);

// Immutable
final colorListProvider = Provider((ref) => colorList);

final selectedColorProvider = StateProvider((ref) => 0);
