// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exploration',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    ); 
  }
}
class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: Text("A Simple Day Planner!"),
        ),
        body: Column(
          children: [
            Progress(),
            TaskList(),
          ],
        ),
      );
  }
}

class Progress extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Text("you are this more away for completing"),
        LinearProgressIndicator(value: 0.0),
      ],
    );
  }
}

class TaskList extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        TaskItem(label:"Brushing and daily routines"),
        TaskItem(label:"Yoga"),
        TaskItem(label:"Bathing and having breakfast after that"),
        TaskItem(label:"Getting ready for work"),
        TaskItem(label:"After work,going to gym"),
        TaskItem(label:"Read some newspapers/articles"),
        TaskItem(label:"Again have a bath"),
        TaskItem(label:"Prayer and lunch"),
        TaskItem(label:"Set the alarm and sleep"),
      ],
    );
  }

}
  
class TaskItem extends StatelessWidget{
  final String label;

  const TaskItem({Key? key, required this.label}):super(key: key);

  // ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context){
    return Row(
      children: [
        Checkbox(onChanged: null,value: false),
        Text(label),
      ],
    );
  }
}

