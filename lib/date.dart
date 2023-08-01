import 'package:flutter/material.dart';
import 'package:flutter_application_1/destination.dart';

import 'package:flutter_application_1/welcome.dart';

void main() {
  runApp(const Date());
}

class Date extends StatelessWidget {
  const Date({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Select Date',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTimeRange? _selectedDateRange;

  // This function will be triggered when the floating button is pressed
  void _show() async {
    final DateTimeRange? result = await showDateRangePicker(
      context: context,
      firstDate: DateTime(2022, 1, 1),
      lastDate: DateTime(2030, 12, 31),
      currentDate: DateTime.now(),
      saveText: 'Done',
    );

    if (result != null) {
       Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Destination(),
                ),
              );
     
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: const Color.fromARGB(255, 255, 255, 255)),
          onPressed: () =>   Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>Welcome())),
        ),
        title: Text("Select Date"),
       
      ),
      body: _selectedDateRange == null
          ? const Center(
              child: Text('select your trip date'),
            )
          : Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Start date
                  Text(
                    "Start date: ${_selectedDateRange?.start.toString().split(' ')[0]}",
                    style: const TextStyle(fontSize: 24, color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                  
                  const SizedBox(
                    height: 20,
                    
                  ),
                  
                  // End date
                  Text(
                      "End date: ${_selectedDateRange?.end.toString().split(' ')[0]}",
                      style: const TextStyle(fontSize: 24, color: Color.fromARGB(255, 0, 0, 0)))
                ],
              ),
            ),
      // This button is used to show the date range picker
      floatingActionButton: FloatingActionButton(
        onPressed: _show,
        child: const Icon(Icons.date_range),
      ),
      
    );
  }
}