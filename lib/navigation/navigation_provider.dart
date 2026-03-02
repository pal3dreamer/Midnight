import 'package:flutter_riverpod/legacy.dart';
import 'package:task_manager/navigation/navigation_viewmodel.dart';

final navigationProvider = StateNotifierProvider<NavigationViewModel, int>(
  (ref) => NavigationViewModel(),
);