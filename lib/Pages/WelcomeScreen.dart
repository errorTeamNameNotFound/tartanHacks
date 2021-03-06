import 'package:flutter/material.dart';
import 'package:tartan_hacks/CustomWidgets/Categories/CategoriesContainer.dart';
import 'package:tartan_hacks/CustomWidgets/Events/EventsContainer.dart';
import 'package:tartan_hacks/CustomWidgets/Reminders/RemindersContainer.dart';
import 'package:tartan_hacks/Data/constants.dart';
import 'package:tartan_hacks/CustomWidgets/Reminders/ReminderCard.dart';
import '../database/database.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        onPressed: () {
          Navigator.pushNamed(context, "/CalendarScreen");
        },
        child: Icon(Icons.calendar_today),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: kDarkPurple,
              ),
              height: 400,
              child: Center(
                child: Text("Plasma Looking Background and robot man"),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print("Add stuff here");
              },
              child: Text("Add Event"),
            ),
            ElevatedButton(
              onPressed: () {
                print("Add stuff here");
              },
              child: Text("Add Reminder"),
            ),
            UpcomingEvents(),
            UpcomingReminders(),
            CategoriesContainer(),
            ElevatedButton(
              onPressed: () => {
                sendData("example data"),
              },
            ),
          ],
        ),
      ),
    );
  }
}
