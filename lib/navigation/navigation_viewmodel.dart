import 'package:flutter_riverpod/legacy.dart';

class NavigationViewModel extends StateNotifier<int>{

NavigationViewModel() : super(0);
void changeIndex(int newIndex){
  state = newIndex;

}
}