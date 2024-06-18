import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_tutorial/models/color_result.dart';
import 'package:riverpod_tutorial/services/api_service.dart';

part 'color_details_provider.g.dart';

@Riverpod(keepAlive: true)
Future<ColorResult?> colorDetail(ColorDetailRef ref, String hexcode) async {
  return await ApiService().retrieve(hexcode);
}