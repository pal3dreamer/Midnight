import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF000000),
      body: SafeArea(
child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Padding(
    padding: EdgeInsetsGeometry.all(20),
    child: Text("Manage \nyour tasks ✏️ ",
    style: TextStyle(
      fontFamily: "DM Sans",
      color: Colors.white,
      fontSize: 44,
      fontWeight: FontWeight.bold,
    )
    ),
    ),

    Padding(
   padding: EdgeInsetsGeometry.all(20),
   child: SizedBox( 
   height: 100,
   child: DatePicker(
                  DateTime.now(),
                  initialSelectedDate: DateTime.now(),
                  selectionColor: Colors.grey,
                  selectedTextColor: Colors.black,
dateTextStyle: TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.w500,
),
                  monthTextStyle: TextStyle(
                    color: Color(0xFF313131),
                  ),
                  dayTextStyle: TextStyle(
                     color: Color(0xFF313131),
                  ),
                  width: 60,
                  height: 80,
        )
)
)
],
      ),
      )
      );
  }
}