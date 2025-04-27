import 'package:cbt_nursing_app/main.dart';
import 'package:flutter/material.dart';

class Subsections extends StatefulWidget {
  const Subsections({super.key});

  @override
  State<Subsections> createState() => _SubsectionsState();
}

class _SubsectionsState extends State<Subsections> {
  List sections = ["Section 1", "Section 2", "Section 3"];
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: Text("Subsections")),

      body: ListView.builder(
        itemCount: sections.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: mq.width * 1,
              height: 0.1 * mq.height,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: ListTile(
                  title: Text(sections[index], style: TextStyle(fontSize: 20)),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
