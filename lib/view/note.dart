import 'package:flutter/material.dart';

class NotePractice extends StatefulWidget {
  const NotePractice({super.key});

  @override
  State<NotePractice> createState() => _NotePracticeState();
}

class _NotePracticeState extends State<NotePractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Note Practice")),
      body: Column(
        spacing: 20,
        children: [
          ElevatedButton(onPressed: (){}, child: Text("Get Note")),
          ElevatedButton(onPressed: (){}, child: Text("Note Details")),
          ElevatedButton(onPressed: (){}, child: Text("Note Add")),
          ElevatedButton(onPressed: (){}, child: Text("Note Delete")),
        ],
      ),

    );
  }
}
