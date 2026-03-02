import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:task_manager/home/home_screen.dart';
import 'package:task_manager/navigation/navigation_provider.dart';
import 'package:task_manager/tasks/add_edit.dart/add_edit_screen.dart';
import 'package:task_manager/tasks/reminder/reminder_log_screen.dart';
import 'package:task_manager/tasks/settings/personal_info.dart';
import 'package:task_manager/tasks/today/today_screen.dart';

class NavigationScreen extends ConsumerWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
  final index = ref.watch(navigationProvider);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
  onPressed: () {
     ref.read(navigationProvider.notifier).changeIndex(2);
  },
  shape: CircleBorder(),
  child: PhosphorIcon(
    PhosphorIconsRegular.plus,
    color: Colors.black,
  ),

),
floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: Color(0xFF000000),
      body: getBottomNavigationWidget(index),
      
      /*
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white54,
        currentIndex: index,
        onTap: (value){
          ref.watch(navigationProvider.notifier).changeIndex(value);
        },
        backgroundColor: Color(0xFF000000),
        items: [
        BottomNavigationBarItem(
          icon: PhosphorIcon(PhosphorIconsRegular.house),
          label: "",
        ),
        BottomNavigationBarItem(
          icon:  PhosphorIcon(PhosphorIconsRegular.folderSimple),
          label: "",
        ),
          BottomNavigationBarItem(
          icon: PhosphorIcon(PhosphorIconsRegular.plusCircle),
          label: "",
        ),
          BottomNavigationBarItem(
          icon: PhosphorIcon(PhosphorIconsRegular.chatTeardrop),
          label: "",
        ),
          BottomNavigationBarItem(
          icon: PhosphorIcon(PhosphorIconsRegular.user),
          label: "",
        ),
        
      ],
      ),
      */

      bottomNavigationBar: BottomAppBar(
        color: Color(0xFF000000),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(onPressed: () {
            ref.read(navigationProvider.notifier).changeIndex(0);
            }, icon: PhosphorIcon(PhosphorIconsRegular.house),
            iconSize: 32,),
            IconButton(onPressed: (){
              ref.read(navigationProvider.notifier).changeIndex(1);
            }, icon: PhosphorIcon(PhosphorIconsRegular.folderSimple),
            iconSize: 32,),
            IconButton(onPressed: (){
              ref.read(navigationProvider.notifier).changeIndex(3);
            }, icon: PhosphorIcon(PhosphorIconsRegular.chatTeardrop),
            iconSize: 32,),
            IconButton(onPressed: (){
              ref.read(navigationProvider.notifier).changeIndex(4);
            }, icon: PhosphorIcon(PhosphorIconsRegular.user),
            iconSize: 32,),
          ],
        ),

      ),
    );
    
  }
        Widget getBottomNavigationWidget(int position){
        switch(position){
    case 0:
      return const HomeScreen();
    case 1:
      return const TodayScreen();
    case 2:
      return const AddEditScreen();
    case 3:
      return const ReminderLogScreen();
    case 4:
      return const PersonalInfo();
    default:
      return const HomeScreen();
  }
      }
}


