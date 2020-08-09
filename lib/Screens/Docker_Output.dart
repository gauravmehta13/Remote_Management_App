import 'package:flutter/material.dart';
import 'Docker.dart';

class Docker_Output extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Output'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Center(
              child: Text(
            output,
            style: TextStyle(fontWeight: FontWeight.w800),
          )),
        ));
  }
}