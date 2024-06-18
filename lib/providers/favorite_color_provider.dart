import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_tutorial/models/color_result.dart';
import 'package:riverpod_tutorial/providers/color_list_provider.dart';
import 'package:riverpod_tutorial/services/api_service.dart';

final favoriteColorsProvider = Provider<List<ColorResult>>((ref) {
  return ref.watch(colorListProvider).where((color) => color.isLiked).toList();
});